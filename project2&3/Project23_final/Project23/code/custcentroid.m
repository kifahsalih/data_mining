function[cndtestlabel] = custcentroid(traind,traincl,testd)
cndclass=traincl';
ctrain=traind;
ctest=testd;
[uqclass,~,xz]=unique(cndclass);
numclass=numel(uqclass);
[xy,~]=hist(xz,unique(xz));
k=ctrain';
for j = 1:numclass
  numlbls=xy(1);
  cmean(j,:) = sum(k(cndclass==j,2:end))/numlbls; %mean of classes
end
cmean=cmean';
a=~isnan(ctest);
b=~isnan(cmean);
D=abs(ctest'.^2*b - 2*ctest'*cmean + a'*cmean.^2); %Euclidean distance calculation
[~, indexp]=min(D,[],2); %nearest point
%disp(indexp);
cndtestlabel=indexp';
end