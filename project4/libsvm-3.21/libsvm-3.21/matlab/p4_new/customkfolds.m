function [taccprint]= customkfolds( kvalue,infile,method,knnval,svmthd,fval,dim )
if dim==0
    sample = infile;
else
    sample = dlmread(infile,',',0,0);
    %sample = infile;
end
[uq,~,ic]=unique(sample(1,:));
[a,~]=hist(ic,unique(ic));
tclsno=max(uq);
kfold=kvalue;
splitfile = [cell(kfold,1), cell(kfold,1), cell(kfold,1), cell(kfold,1), cell(kfold,1)];
fsplitfile = [cell(kfold,1), cell(kfold,1), cell(kfold,1), cell(kfold,1), cell(kfold,1), cell(kfold,1), cell(kfold,1)];
split=zeros(tclsno,1);
temp=zeros(tclsno,1);
classlabel = cell(kfold,1);
difflabel = cell(kfold,1);
countrem=zeros(tclsno,1);
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
                countrem(i)=rem;
            end
            %             if (rem~=0)&&(j==kfold)
            %                 temp=split(i,1);
            %                 %split(i,1)=rval-((kfold-1)*split(i,1));
            %             else
            if (rem~=0)&&(countrem(i)>0)
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
            if rval>=kfold
                smptest(1:end,y(startpos))=-001;
            end
        end
        for q=1:split(i,1)
            if (i==1)&&(q==1)
                startpos=startpos+1;
            else
                testdata=[testdata,sample(1:end,y(startpos))];
                if rval>=kfold
                    smptest(1:end,y(startpos))=-001;
                end
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
    fsplitfile{j,1}=traindata;
    fsplitfile{j,2}=testdata;
%     if (strcmp(fval,'LDA'))&&(dim==10)
%         [ldtrdata,~]=lda(traindata(2:end,1:end)',trainlabel,tclsno-1);
%         [ldtesdata,~]=lda(testdata(2:end,1:end)',testlabel,tclsno-1);
%         traindata=vertcat(trainlabel,ldtrdata');
%         testdata=vertcat(testlabel,ldtesdata');
%     end
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
if strcmp(fval,'Y')
    sumexvar=[];
    sumwgrvar=[];
    for q=1:kfold
        fstatdata=fsplitfile{q,1};
        fstattestdata=fsplitfile{q,2};
        ftestdata=fstattestdata(2:end,1:end);
        [sq,~,sc]=unique(fstatdata(1,:));
        fclsno=max(sq);
        fsdata=fstatdata(2:end,1:end);
        [~,col] = size(fsdata);
        flmean=mean(fsdata,2);
        for s=1:fclsno
            [p,~]=find(sc==s);
            sz=numel(p);
            strt=1;
            if s==1
                for r=1:sz
                    if r==1
                        fdata=fstatdata(1:end,p(strt));
                    else
                        fdata=[fdata,fstatdata(1:end,p(strt))];
                    end
                    strt=strt+1;
                end
            else
                for r=1:sz
                    fdata=[fdata,fstatdata(1:end,p(strt))];
                    strt=strt+1;
                end
            end
            fdata=fdata(2:end,1:end);
            ecmean=mean(fdata,2);
            exvar=((((ecmean-flmean).^2)*sz)./(fclsno-1));
            sumexvar=horzcat(sumexvar,exvar);
            yibar=kron(ecmean,ones(1,sz));
            wgrvar=(((fdata-yibar).^2)*(sz-1))./(col-fclsno);
            sumwgrvar=horzcat(sumwgrvar,wgrvar);
            fdata=[];
        end
        sumexvar=sum(sumexvar,2);
        sumwgrvar= sum(sumwgrvar,2);
        ftest= sumexvar./sumwgrvar;
        [~,inx] = sort(ftest,'descend');
        topvar= inx(1:dim,1:1);
        krows= fsdata(topvar,:);
        trows=ftestdata(topvar,:);
        header = fstatdata(1,:);
        headertest=fstattestdata(1,:);
        fresult= vertcat(header,krows);
        if ~strcmp(method,'CENTROID')
            fresult=fresult(2:end,1:end);
        end
        fsplitfile{q,3}=fresult;
        fsplitfile{q,4}=trows;
        fsplitfile{q,5}=header;
        fsplitfile{q,6}=headertest;
    end
    if strcmp(method,'LR')
        for cuslbl=1:kfold
            for y=1:tclsno
                if y==1
                    ylbl= double(fsplitfile{cuslbl,5}==y);
                else
                    ylbl= [ylbl;double(fsplitfile{cuslbl,5}==y)];
                end
            end
            fsplitfile{cuslbl,7}=ylbl;
            ylbl=[];
        end
        for res=1:kfold
            classlabel{res}=linearreg(fsplitfile{res,3},fsplitfile{res,7},fsplitfile{res,4});
        end
    else
        if strcmp(method,'KNN')
            for res=1:kfold
                classlabel{res}=custknn(fsplitfile{res,3},fsplitfile{res,5},fsplitfile{res,4},knnval);
            end
        end
        if strcmp(method,'CENTROID')
            for res=1:kfold
                classlabel{res}=custcentroid(fsplitfile{res,3},fsplitfile{res,5},fsplitfile{res,4});
            end
        end
        if strcmp(method,'SVM')
            for res=1:kfold
                classlabel{res}=custsvm(fsplitfile{res,3},fsplitfile{res,4},fsplitfile{res,5},fsplitfile{res,6},svmthd);
            end
        end
    end
else
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
end
for prt=1:kfold
    if strcmp(fval,'Y')
        difflabel{prt}=fsplitfile{prt,6}-classlabel{prt};
    else
        difflabel{prt}=splitfile{prt,4}-classlabel{prt};
    end
    fprintf('Start of iteration%i****\n',prt);
    fprintf('Actual Class for iteration%i=',prt);
    if strcmp(fval,'Y')
        disp(fsplitfile{prt,6});
    else
        disp(splitfile{prt,4});
    end
    fprintf('Predicted Class for iteration%i=',prt);
    disp(classlabel{prt(1:end,1:end)});
    fprintf('Difference for iteration%i=',prt);
    disp(difflabel{prt(1:end,1:end)});
    %fprintf('Accuracy for iteration%i=',prt);
    %accur(1,prt)=100*(1-((nnz(difflabel{prt(1:end,1:end)}))/size(difflabel{prt},2)));
    disp(size(difflabel{prt},2));
    disp(nnz(difflabel{prt(1:end,1:end)}));
    accur(1,prt)=size(difflabel{prt},2)-nnz(difflabel{prt(1:end,1:end)});
    prsizel(1,prt)=size(difflabel{prt},2);
    %accprint=[num2str(accur(1,prt)),'%'];
    %disp(accprint);
    fprintf('End of iteration%i**** \n\n\n',prt);
end
fprintf('Total Accuracy=');
%g=sum(accur);
%taccprint=[num2str(sum(accur)/size(sample,2)*100),'%'];
taccprint=(sum(accur)/sum(prsizel)*100);
disp(taccprint);
end
