function [msdres]= msd_main(kva,infile,method,opt1,opt2,ndim)
msdsamp = dlmread(infile,',',0,0);
ndata=msdcus(msdsamp,ndim);
[taccprint]=msdkfolds(kva,ndata,method,opt1,opt2);
msdres=taccprint;
end