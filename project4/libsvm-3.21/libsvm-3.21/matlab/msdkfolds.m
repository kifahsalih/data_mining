function [taccprint]= msdkfolds( kvalue,sample,method,knnval,svmthd )
[uq,~,ic]=unique(sample(1,:));
[a,~]=hist(ic,unique(ic));
tclsno=max(uq);
kfold=kvalue;
splitfile = [cell(kfold,1), cell(kfold,1), cell(kfold,1), cell(kfold,1), cell(kfold,1)];
split=zeros(tclsno,1);
temp=zeros(tclsno,1);
classlabel = cell(kfold,1);
difflabel = cell(kfold,1);
countrem=0;
for j=1:kfold
    smptest=sample;
    countrem=countrem-1;
    for i=1:tclsno
        rval=a(i);
        if rval<kfold
            split(i,1)=rval;
            startpos=1;
        else
            rem=mod(rval,kfold);
            if j==1
                countrem=rem;
            end
            %             if (rem~=0)&&(j==kfold)
            %                 temp=split(i,1);
            %                 %split(i,1)=rval-((kfold-1)*split(i,1));
            %             else
            if (rem~=0)&&(countrem>0)
                split(i,1)=floor(rval/kfold)+1;
                startpos=temp(i,1)+1;
                temp(i,1)=temp(i,1)+split(i,1);
            else
                split(i,1)=floor(rval/kfold);
                startpos=temp(i,1)+1;
                temp(i,1)=temp(i,1)+split(i,1);
            end
        end
        [y,~]=find(ic==i);
        %     if rval<kfold
        %         startpos=1;
        %     else
        %         if j==1
        %             startpos=1;
        %         else
        %             if (rem~=0)&&(j==kfold)
        %                 startpos=(kfold-1)*temp+1;
        %             else
        %                 endpos=split(i,1)*j;
        %                 startpos=(endpos-split(i,1))+1;
        %             end
        %         end;
        %   end;
        if i==1
            testdata=sample(1:end,y(startpos));
            smptest(1:end,y(startpos))=-001;
        end
        for q=1:split(i,1)
            if (i==1)&&(q==1)
                startpos=startpos+1;
            else
                testdata=[testdata,sample(1:end,y(startpos))];
                smptest(1:end,y(startpos))=-001;
                startpos=startpos+1;
            end
        end
    end
    smptest=smptest';
    indices = find(smptest(:,2)==-001);
    smptest(indices,:) = [];
    % actual=sample(1:end,1:end)';
    setOrder='stable';
    % traindata=setdiff(actual,testdata','rows',setOrder)';
    % smptraindiff=setdiff(smptest,traindata','rows',setOrder)';
    traindata=smptest';
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
            classlabel{res}=custsvm(splitfile{res,1},splitfile{res,2},splitfile{res,3},splitfile{res,4},svmthd);
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
    %fprintf('Accuracy for iteration%i=',prt);
    %accur(1,prt)=100*(1-((nnz(difflabel{prt(1:end,1:end)}))/size(difflabel{prt},2)));
    accur(1,prt)=size(difflabel{prt},2)-nnz(difflabel{prt(1:end,1:end)});
    %accprint=[num2str(accur(1,prt)),'%'];
    %disp(accprint);
    fprintf('End of iteration%i**** \n\n\n',prt);
end
fprintf('Total Accuracy=');
%g=sum(accur);
%taccprint=[num2str(sum(accur)/size(sample,2)*100),'%'];
taccprint=(sum(accur)/size(sample,2)*100);
disp(taccprint);
end
