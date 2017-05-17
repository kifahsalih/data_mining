clear all
clc
traindata = 'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project 1\DataMining_Project1_code\DataMining_Project1\files\train200.txt';
tclass = 'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project 1\DataMining_Project1_code\DataMining_Project1\files\class20.txt';
testdata = 'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project 1\DataMining_Project1_code\DataMining_Project1\files\testdataX20.txt';
X1=dlmread(testdata,',',0,0);
Y1=dlmread(traindata,',',0,0);
pclass=dlmread(tclass,',',0,0);
a=~isnan(X1);
b=~isnan(Y1);
D=abs(X1'.^2*b - 2*X1'*Y1 + a'*Y1.^2);
[sorted, indexp]=sort(D');
indexp=indexp(1:3,:);
knnc=pclass(indexp);
clabel=unique(pclass);
n=length(clabel);
for i=1:n
    counter(i,:)=sum(knnc==clabel(i));
end
[maxval, windex]=max(counter,[],1);
disp(clabel(windex));