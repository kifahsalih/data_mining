
%function [file]=  fstastics(infile, samplesize)  % classSize = 40 in atnt
%26 in handwritten %samplesize= 10 for atnt 39 for handwritten %
%overallsize = 400 in atnt 
k=10;
samplesize= 10;
classSize=40;

infile ='D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project4\files\ATNTFaceImages400.txt';
sample = dlmread(infile,',',0,0);
data1= dlmread(infile,',',1,0);  %without header

[row,col] = size(data1);
yi=[];
 for i=1:classSize
     
            a= mean(data1(:,((i-1)*samplesize)+1:((i-1)*samplesize)+samplesize),2);
            
            yi= horzcat(yi,a);
            
 end
   
y=mean(data1,2);
yrep= repmat(y,1,classSize);
Ydiff= yi-yrep;
BetweenGrVarience= sum(((Ydiff.^2)/(classSize-1))*samplesize,2);

% second formula 

yiBar=kron(yi,ones(1,samplesize));

WithoutGrVarience= sum((( (data1-yiBar).^2) /(col-classSize) ),2);


Ftest= BetweenGrVarience./WithoutGrVarience;
[B,Index] = sort(Ftest,'descend');
topValuesOfK= Index(1:k,1:1);
%getting values from data1 with row numbers in topValuesOfK

KvalueRows= data1(topValuesOfK,:);
% adding headder to KvalueRows
headder = sample(1,:);
result= vertcat(headder,KvalueRows);

customkfoldsvX( 5,result,'CENTROID');
%end