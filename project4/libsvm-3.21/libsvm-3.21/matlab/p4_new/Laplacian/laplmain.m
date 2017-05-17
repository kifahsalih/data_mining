function [lapacc]= laplmain(kval,infile,method,opt1,opt2,ldim)
lapdata = dlmread(infile,',',0,0);
%lapdata=infile;
% lheader=lapdata(1,:);
% ldata=lapdata(2:end,:);
% ldist=pdist(ldata');
% ldist=exp(-(ldist/max(ldist)));
% ldistsqf=squareform(ldist);
% D=diag(sum(ldistsqf,2));
% L=D-ldistsqf;
% [eigvec,eigval]=eig(L,D);
% [~,indic]=sort(eigval,'ascend');
% x=eigvec(:,indic(2:ldim+1));
% laptrdata=vertcat(lheader,x');
laptrdata=laplaccus(lapdata,ldim);
[taccprint]=customkfolds(kval,laptrdata,method,opt1,opt2,'N',0);
lapacc=taccprint;
end