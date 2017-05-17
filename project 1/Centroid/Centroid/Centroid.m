Trainset = 'C:\Users\riju\Texts_Sem2\DM\Centroid\trainDataXY.txt';
Trainclass = 'C:\Users\riju\Texts_Sem2\DM\Centroid\class20.txt';
X1=dlmread(Trainset,',',0,0);
Y1=dlmread(Trainclass,',',0,0);
uqclass=unique(Y1);
numclass=numel(uqclass);
%centroidm.eclass=cell(numclass,1);
for i=1:numclass
    index=(Y1==uqclass(i));
    thisclassnum=sum(index);
    centroid.train=X1(:,index);
    centroid.K=centroid.train'*centroid.train;
    centroid.M=(1/thisclassnum) * ones(thisclassnum,1);
    centroid.meanval=centroid.M'*centroid.K*centroid.M;
    centroid.class=uqclass(i);
    centroidm.eclass{i}=centroid;
end
Testset='C:\Users\riju\Texts_Sem2\DM\Centroid\testDataX20.txt';
testdata=dlmread(Testset,',',0,0);
testsize=size(testdata,2);
Ktest=zeros(testsize,1);
for i=1:testsize
   Ktest(i)= testdata(:,i)'*testdata(:,i);
end
vals=zeros(testsize,numclass);
for i=1:numclass
    centroid=centroidm.eclass{i};
    S=testdata'*centroid.train;
    vals(:,i)= Ktest + centroid.meanval - 2*S*centroid.M;
end
[mVal,predicted]=min(vals,[],2);
