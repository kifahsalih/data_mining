function [pcares]= pca_main(kva,infile,method,opt1,opt2,flg,dim)
newU=0;
pcasamp = dlmread(infile,',',0,0);
pcadata= dlmread(infile,',',1,0);
if strcmp(flg,'B')
    [U,S,V]=svd(pcadata,'econ');
    newU=U(:,1:dim);
    trndata=newU'*pcadata;
    trilbel=pcasamp(1,1:end);
    trndata=vertcat(trilbel,trndata);
    [splitfile,classlabel,difflabel,accur,taccprint]=pcakfolds(kva,trndata,newU',method,opt1,opt2,flg,dim);
else
    [splitfile,classlabel,difflabel,accur,taccprint]=pcakfolds(kva,pcasamp,newU',method,opt1,opt2,flg,dim);
end
pcares=taccprint;
end