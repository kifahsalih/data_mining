Trainset = 'C:\Users\riju\Texts_Sem2\DM\KNN\Proto.txt';
Trainclass = 'C:\Users\riju\Texts_Sem2\DM\KNN\Protoclass.txt';
Testset = 'C:\Users\riju\Texts_Sem2\DM\KNN\Xtest.txt';
X1=dlmread(Trainset,',',0,0);
Y1=dlmread(Trainclass,',',0,0);
Z1=dlmread(Testset,',',0,0);
uqclass=unique(Y1);
numclass=numel(uqclass);
Q=zeros(numclass,1);
for i=1:numclass
    index=(Y1==uqclass(i));
    train=X1(:,index);
    Q(i)=mean2(train);
end
D=abs(Q.^2 - 2*Q*Z1 + Z1.^2);