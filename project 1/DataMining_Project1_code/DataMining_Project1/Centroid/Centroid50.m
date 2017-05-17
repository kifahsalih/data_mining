%project1 centroid50,centroid 200,knn1_50(3,5and _200),
%regression50,200 % Path: D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project 1\DataMining_Project1_code\DataMining_Project1
traindata = 'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project 1\DataMining_Project1_code\DataMining_Project1\files\Xtrain50.txt';
tclass = 'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project 1\DataMining_Project1_code\DataMining_Project1\files\class5.txt';
testdata = 'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project 1\DataMining_Project1_code\DataMining_Project1\files\testDataX5.txt';
ctest=dlmread(testdata,',',0,0);
ctrain=dlmread(traindata,',',0,0);
class=dlmread(tclass,',',0,0);
class=class';
uqclass=unique(class); % unique values in to colum array  = [1;2;3;4;5]
numclass=numel(uqclass);  %number of elements in array numel  =5
k=ctrain';
for j = 1:numclass
  cmean(j,:) = sum(k(class==j,2:end))/9; %mean of classes
end
cmean=cmean';
a=~isnan(ctest);
b=~isnan(cmean);
D=abs(ctest'.^2*b - 2*ctest'*cmean + a'*cmean.^2); %Euclidean distance calculation
[min, indexp]=min(D,[],2); %nearest point
disp(indexp);