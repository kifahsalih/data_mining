%project1

traindata = 'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project 1\DataMining_Project1_code\DataMining_Project1\files\Xtrain200.txt';
tclass = 'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project 1\DataMining_Project1_code\DataMining_Project1\files\class20.txt';
testdata = 'D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project 1\DataMining_Project1_code\DataMining_Project1\files\testdataX20.txt';
ctest=dlmread(testdata,',',0,0);
ctrain=dlmread(traindata,',',0,0);
class=dlmread(tclass,',',0,0);
class=class';
uqclass=unique(class);
numclass=numel(uqclass);
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