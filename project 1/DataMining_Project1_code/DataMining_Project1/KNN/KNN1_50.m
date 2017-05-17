%project1
%K nearest neighbor
%path: % D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project2&3\Project23_final\libsvm-3.21\libsvm-3.21\matlab
clc
clear all
traindata = 'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project 1\DataMining_Project1_code\DataMining_Project1\files\train50.txt';
tclass = 'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project 1\DataMining_Project1_code\DataMining_Project1\files\class5.txt';
testdata = 'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project 1\DataMining_Project1_code\DataMining_Project1\files\testdataX5.txt';
X1=dlmread(testdata,',',0,0);
Y1=dlmread(traindata,',',0,0);
class=dlmread(tclass,',',0,0);

a=~isnan(X1);
b=~isnan(Y1);
D=abs(X1'.^2*b - 2*X1'*Y1 + a'*Y1.^2); %Euclidean distance calculation
[min, indexp]=min(D,[],2); %nearest point
disp(class(indexp));

%vX-> the following folder has knn1_50, knn1_200, knn3_50, knn3_200, knn5_50,knn5_200  
%D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project 1\DataMining_Project1_code\DataMining_Project1\KNN