clear all;clc;close all
Mk=9
i1=1
k=5
for k=1:k
    i2=i1-1+Mk;
    label(i1:i2)=k;
    i1=i1+Mk;
    
end
image= 'D:\projects\spring st se2 mining 2016\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project2&3\kmeans_test\files\Xtrain50.txt';
x = dlmread(image);
train= x(2:end,1:end);
Kindex= kmeans(train',k);
Nt=length(Kindex);
c_tab=zeros(k)
for i=1:Nt
    k2=Kindex(i)
    k1=label(i)
    k1
    k2
    c_tab(k1,k2)
    c_tab(k1,k2)= c_tab(k1,k2)+1; %
end
ctab1=c_tab
~ctab1
[a]=munkres(~ctab1);
diagonalsum =sum(diag(:,c_tab(a)))
accuracy= diagonalsum/45