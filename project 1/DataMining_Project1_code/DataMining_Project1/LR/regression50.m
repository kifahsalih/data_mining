%project1
clear all
clc
Xtrainfile = 'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project 1\DataMining_Project1_code\DataMining_Project1\files\Xtrain50.txt';
Ytrainfile = 'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project 1\DataMining_Project1_code\DataMining_Project1\files\Ytrain50.txt';
testfile = 'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project 1\DataMining_Project1_code\DataMining_Project1\files\testDataX5.txt';
X=dlmread(Xtrainfile,',',[1 0 644 44]); %read from 2nd row
Y=dlmread(Ytrainfile,',',0,0);
B=pinv(X')*Y'; %(XX')^-1*X'*Y' %Moore-Penrose pseudoinverse of matrix
Ytrain=B'*X; 
%disp(Ytrain);
[Ytrainvalue,Yclass]=max(Ytrain,[],1);
%disp(Yclass);
Xnew=dlmread(testfile,',',0,0);
Ytest=B'*Xnew;
%disp(Ytest);
[Ytestvalue,Testclass]=max(Ytest,[],1);
disp(Testclass);