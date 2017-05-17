function [resultx]= fstastics_hand(dim,samplesize,classsize,infile,knn,method,opt1,opt2)
%k=10;
%samplesize= 39;
%classSize=26;
%infile ='D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\libsvm-3.21\libsvm-3.21\matlab\files\HandWrittenLetters.txt';
sample = dlmread(infile,',',0,0);
data1= dlmread(infile,',',1,0);  %without header
[row,col] = size(data1);
yi=[];
for i=1:classsize
    a= mean(data1(:,((i-1)*samplesize)+1:((i-1)*samplesize)+samplesize),2);
    yi= horzcat(yi,a);
end
y=mean(data1,2);
yrep= repmat(y,1,classsize);
Ydiff= yi-yrep;
BetweenGrVarience= sum(((Ydiff.^2)/(classsize-1))*samplesize,2);
% second formula
yiBar=kron(yi,ones(1,samplesize));
WithoutGrVarience= sum((( (data1-yiBar).^2) /(col-classsize) ),2);
Ftest= BetweenGrVarience./WithoutGrVarience;
[B,Index] = sort(Ftest,'descend');
topValuesOfK= Index(1:dim,1:1);
%getting values from data1 with row numbers in topValuesOfK
KvalueRows= data1(topValuesOfK,:);
% adding headder to KvalueRows
headder = sample(1,:);
result= vertcat(headder,KvalueRows);
[splitfile,classlabel,difflabel,accur,taccprint]=customkfoldsvX( knn,result,method,opt1,opt2);
resultx=taccprint;
end