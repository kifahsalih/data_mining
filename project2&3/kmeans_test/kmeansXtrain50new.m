clear all;clc;close all
image= 'D:\projects\spring st se2 mining 2016\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project2&3\kmeans_test\files\Xtrain50.txt';
x = dlmread(image);
train= x(2:end,1:end);
idx = kmeans(train', 5);

for i =0:4
x=(i*9)+1; y=9*(i+1);
a(i+1)=mode(idx(x:y));
end
fprintf 'most repeated class numbers for the person\n';
a
%fprintf 'class number shared for two person';
%mode(a)


% %fprintf 'class number shared for two person';
% %mode(a)
% 
% fprintf 'for test data 50\n';
% imageTest= 'D:\projects\spring st se2 mining 2016\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project2&3\kmeans_test\files\testDataX5.txt';
% x = dlmread(imageTest);
% trainX= x(1:end,1:end);
% idx = kmeans(trainX', 5);
% 
% for i =0:4
% x=(i*1)+1; y=1*(i+1);
% b(i+1)=mode(idx(x:y));
% end
% fprintf 'most repeated class numbers for the person\n';
% b

%confusion matrix

