function  customkfold( kvalue,infile,method,knnval,svmethod )
%sample = dlmread('D:\projects\spring st se2 mining 2016\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project2&3\Project23_final\libsvm-3.21\libsvm-3.21\matlab\files\ATNTFaceImages400.txt',',',0,0);
%sample = dlmread('D:\projects\spring st se2 mining 2016\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project2&3\Project23_final\libsvm-3.21\libsvm-3.21\matlab\files\testDataXY20.txt',',',0,0);
sample = dlmread(infile,',',0,0);
[uq,~,ic]=unique(sample(1,:));
[a,~]=hist(ic,unique(ic));
tclsno=max(uq);
kfold=kvalue;
splitfile = [cell(5,1), cell(5,1), cell(5,1), cell(5,1), cell(5,1)];
split=zeros(tclsno,1);
classlabel = cell(5,1);
actclass = cell(5,1);
difflabel = cell(5,1);
for j=1:kfold
    for i=1:tclsno
        rval=a(i);
        if rval<kfold
            split(i,1)=rval;
        else
            rem=mod(rval,kfold);
            if (rem~=0)&&(j==kfold)
                temp=split(i,1);
                split(i,1)=rval-(4*split(i,1));
            else
                split(i,1)=floor(rval/5);
            end
        end
        [y,~]=find(ic==i);
        if rval<kfold
            startpos=1;
        else
            if j==1
                startpos=1;
            else
                if (rem~=0)&&(j==kfold)
                    startpos=4*temp+1;
                else
                    endpos=split(i,1)*j;
                    startpos=(endpos-split(i,1))+1;
                end
            end;
        end;
        if i==1
            testdata=sample(1:end,y(startpos));
        end
        for q=1:split(i,1)
            if (i==1)&&(q==1)
                startpos=startpos+1;
            else
                testdata=[testdata,sample(1:end,y(startpos))];
                startpos=startpos+1;
            end
        end
    end
    actual=sample(1:end,1:end)';
    setOrder='stable';
    traindata=setdiff(actual,testdata','rows',setOrder)';
    fstat=any(traindata);
    if isempty(fstat)
        traindata=testdata;
    end
    trainlabel=traindata(1,1:end);
    testlabel=testdata(1,1:end);
    if ~strcmp(method,'CENTROID')
        traindata=traindata(2:end,1:end);
    end
    testdata=testdata(2:end,1:end);
    splitfile{j,1}=traindata;
    splitfile{j,2}=testdata;
    splitfile{j,3}=trainlabel;
    splitfile{j,4}=testlabel;
    testdata=[];
end
actclass=[];
accur=[];
if strcmp(method,'LR')
    for cuslbl=1:kfold
        for y=1:tclsno
            if y==1
                ylbl= double(splitfile{cuslbl,3}==y);
            else
                ylbl= [ylbl;double(splitfile{cuslbl,3}==y)];
            end
        end
        splitfile{cuslbl,5}=ylbl;
        ylbl=[];
    end
    for res=1:kfold
        classlabel{res}=linearreg(splitfile{res,1},splitfile{res,5},splitfile{res,2});
    end
else
    if strcmp(method,'KNN')
        for res=1:kfold
        classlabel{res}=custknn(splitfile{res,1},splitfile{res,3},splitfile{res,2},knnval);
        end
    end
    if strcmp(method,'CENTROID')
        for res=1:kfold
        classlabel{res}=custcentroid(splitfile{res,1},splitfile{res,3},splitfile{res,2});
        end
    end
    if strcmp(method,'SVM')
        for res=1:kfold
        classlabel{res}=custsvm(splitfile{res,1},splitfile{res,2},splitfile{res,3},splitfile{res,4}, svmethod);
        end
    end
end
for prt=1:kfold
    difflabel{prt}=splitfile{prt,4}-classlabel{prt};
    fprintf('Start of iteration%i****\n',prt);
    fprintf('Actual Class for iteration%i=',prt);
    disp(splitfile{prt,4});
    fprintf('Predicted Class for iteration%i=',prt);
    disp(classlabel{prt(1:end,1:end)});
    fprintf('Difference for iteration%i=',prt);
    disp(difflabel{prt(1:end,1:end)});
    fprintf('Accuracy for iteration%i=',prt);
    accur(1,prt)=100*(1-((nnz(difflabel{prt(1:end,1:end)}))/size(difflabel{prt},2)));
    accprint=[num2str(accur(1,prt)),'%'];
    disp(accprint);
    fprintf('End of iteration%i**** \n\n\n',prt);
end
fprintf('Total Accuracy=');
taccprint=[num2str(mean(accur)),'%'];
disp(taccprint);
end
