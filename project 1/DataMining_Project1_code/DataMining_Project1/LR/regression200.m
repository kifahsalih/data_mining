%project1
clear all
clc
Xtrainfile = 'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project 1\DataMining_Project1_code\DataMining_Project1\files\Xtrain200.txt';
Ytrainfile = 'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project 1\DataMining_Project1_code\DataMining_Project1\files\Ytrain200.txt';
testfile = 'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project 1\DataMining_Project1_code\DataMining_Project1\files\testDataX20.txt';
X=dlmread(Xtrainfile,',',[1 0 644 179]); %read from 2nd row
Y=dlmread(Ytrainfile,',',0,0);
B=pinv(X')*Y'; %(XX')^-1*X'*Y'
Ytrain=B'*X; 
%disp(Ytrain);
[Ytrainvalue,Yclass]=max(Ytrain,[],1);
disp(Yclass);
Xnew=dlmread(testfile,',',0,0);
Ytest=B'*Xnew;
%disp(Ytest);
[Ytestvalue,Testclass]=max(Ytest,[],1);
fprintf 'result\n';
disp(Testclass);


%vX-> Project 2 and 3 in following location
%D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project2&3\Project23_final\libsvm-3.21\libsvm-3.21\matlab