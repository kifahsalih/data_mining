Knnproto = 'D:\projects\spring st se2 mining 2016\datamining\project 1\KNN\KNN\Proto.txt';
Protoclass = 'D:\projects\spring st se2 mining 2016\datamining\project 1\KNN\KNN\Protoclass.txt';
Xknn = 'D:\projects\spring st se2 mining 2016\datamining\project 1\KNN\KNN\Xtest.txt';
X1=dlmread(Xknn,',',0,0);
Y1=dlmread(Knnproto,',',0,0);
pclass=dlmread(Protoclass,',',0,0);

V=~isnan(X1);
U=~isnan(Y1);
D=abs(X1'.^2*U - 2*X1'*Y1 + V'*Y1.^2);%euclideaan 
[m, i]=min(D,[],2); % 2-> row wise m-. in value, i-> index of min
C=pclass(i);