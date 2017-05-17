function [cmdacc] = cmdmain(kval,infile,method,opt1,opt2,dimen)
cdata = dlmread(infile,',',0,0);
%cdata=infile;
% header=cdata(1,:);
% data=cdata(2:end,:);
% data=data';
% cdist=pdist(data,'euclidean');
% distsqf=squareform(cdist);
% [y,eigval]=cmdscale(distsqf);
% lam=diag(eigval(1:dimen));
% xnew=y(:,1:dimen)*(lam.^(1/2));
% cmddata=vertcat(header,xnew');
cmddata=msdcus(cdata,dimen);
[taccprint]=customkfolds(kval,cmddata,method,opt1,opt2,'N',0);
cmdacc=taccprint;
end