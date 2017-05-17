function [pcares]= pcamain(kva,infile,method,opt1,opt2,dim)
pcasamp = dlmread(infile,',',0,0);
%pcasamp=infile;
pcadata= dlmread(infile,',',1,0);
%pcadata=infile(2:end,:);
[U,~,~]=svd(pcadata,'econ');
newU=U(:,1:dim);
trndata=newU'*pcadata;
trilbel=pcasamp(1,1:end);
trndata=vertcat(trilbel,trndata);
[taccprint]=customkfolds(kva,trndata,method,opt1,opt2,'N',0);
pcares=taccprint;
end