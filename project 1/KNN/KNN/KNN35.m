Knnproto = 'C:\Users\riju\Texts_Sem2\DM\Centroid\trainDataXY.txt';
Protoclass = 'C:\Users\riju\Texts_Sem2\DM\Centroid\class20.txt';
Xknn = 'C:\Users\riju\Texts_Sem2\DM\Centroid\testDataX20.txt';
X1=dlmread(Xknn,',',0,0);
Y1=dlmread(Knnproto,',',0,0);
pclass=dlmread(Protoclass,',',0,0);
V=~isnan(X1);
U=~isnan(Y1);
D=abs(X1'.^2*U - 2*X1'*Y1 + V'*Y1.^2);
[sorted, indexp]=sort(D');
indexp=indexp(1:3,:); %1:3 for 3
%indexp=indexp(1:5,:); %1:5 for 5
knnc=pclass(indexp);
clabel=unique(pclass);
n=length(clabel);
for i=1:n
    counter(i,:)=sum(knnc==clabel(i));
end
[maxval, windex]=max(counter,[],1);
C=clabel(windex);