Xtrainfile = 'C:\Users\riju\Texts_Sem2\DM\Project1\Xtrain200.txt';
Ytrainfile = 'C:\Users\riju\Texts_Sem2\DM\Project1\Ytrain200.txt';
testfile = 'C:\Users\riju\Texts_Sem2\DM\Project1\testDataX20.txt';
X=dlmread(Xtrainfile,',',[1 0 644 179]);
Y=dlmread(Ytrainfile,',',0,0);
B=pinv(X')*Y';
Ytrain=B'*X;
disp(Ytrain);
[Ytrainvalue,Yclass]=max(Ytrain,[],1);
disp(Yclass);
Xnew=dlmread(testfile,',',0,0);
Ytest=B'*Xnew;
disp(Ytest);
[Ytestvalue,Testclass]=max(Ytest,[],1);
disp(Testclass);