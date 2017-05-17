%Xtrainfile = 'D:\projects\spring st se2 mining 2016\datamining\project 1\LR\LR\Xtrain.txt'; % for 50
%classfile = 'D:\projects\spring st se2 mining 2016\datamining\project 1\LR\LR\Ytrain.txt';% for 50
%testfile = 'D:\projects\spring st se2 mining 2016\datamining\project 1\LR\LR\testDataX.txt';% for 50

Xtrainfile = 'D:\projects\spring st se2 mining 2016\datamining\DataMiningProject1\ATNT200\ATNT200\trainDataXY.txt'; %for 200
classfile = 'D:\projects\spring st se2 mining 2016\datamining\project 1\LR\LR\Ytrain200.txt';%for 200
testfile= 'D:\projects\spring st se2 mining 2016\datamining\DataMiningProject1\ATNT200\ATNT200\testDataX.txt'; %for 200

X=dlmread(Xtrainfile,',',[1 0 644 179]); % seperated by commma, 1 0 neglect 1st row(class name) ie from 0-644 read from 1 -644
Y=dlmread(classfile,',',0,0); % read from start 
B=pinv(X')*Y'; % pinv = (x xt)-1 xt
Ytrain=B'*X;
%disp(Ytrain);
[Ytrainvalue,Yclass]=max(Ytrain,[],1);
disp(Yclass);
Xnew=dlmread(testfile,',',0,0);
Ytest=B'*Xnew;
disp(Ytest);
[Ytestvalue,Testclass]=max(Ytest,[],1);
disp(Testclass);