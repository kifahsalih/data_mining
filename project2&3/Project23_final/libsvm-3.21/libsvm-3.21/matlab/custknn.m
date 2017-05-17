function[knntestlabel] = custknn(trainfile,traincls,testfile,kvalue)
X1=testfile;
Y1=trainfile;
pclass=traincls;
a=~isnan(X1);
b=~isnan(Y1);
D=abs(X1'.^2*b - 2*X1'*Y1 + a'*Y1.^2);
if kvalue==1
    [~, indexp]=min(D,[],2);
    knntestlabel=pclass(indexp);
else
    [sorted, indexp]=sort(D');
    indexp=indexp(1:kvalue,:);
    knnc=pclass(indexp);
    clabel=unique(pclass);
    n=length(clabel);
    for i=1:n
        counter(i,:)=sum(knnc==clabel(i));
    end
    [~, windex]=max(counter,[],1);
    knntestlabel=clabel(windex);
end
end