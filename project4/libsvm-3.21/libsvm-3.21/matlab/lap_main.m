function [lapres]= lap_main(kva,infile,method,opt1,opt2,lpdim)
lapsamp = dlmread(infile,',',0,0);
lpdata=laplaccus(lapsamp,lpdim);
[taccprint]=msdkfolds(kva,lpdata,method,opt1,opt2);
lapres=taccprint;
end