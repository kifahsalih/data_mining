clear all;clc;close all
image= 'D:\projects\spring st se2 mining 2016\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project2&3\kmeans_test\files\Xtrain50.txt';
x_1 = dlmread(image);
train= x_1(2:end,1:end);
k=5;
idx = kmeans(train', k);
idx
for i =0:4
x=(i*9)+1; y=9*(i+1);
a(i+1)=mode(idx(x:y));
end
fprintf 'most common cluster number for a person\n';
a

g2=idx;%%% pre
g1=x_1(1,:);%%% know
[C] = confusionmat(g1',g2)
t=C'
[a,b]=munkres(~C);

[M,I] = max(C,[],2)
DiagonalSum=sum(M)
%diagonal= trace(C) %%adding diagonal elements
accuracy= (DiagonalSum/size(idx,1)) %(idx,1) number of rows


