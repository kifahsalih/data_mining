function[testlabel] = linearreg(Xtrain,Yclass,Test)
B=pinv(Xtrain')*Yclass'; %(XX')^-1*X'*Y'
Ytest=B'*Test;
[~,Testclass]=max(Ytest,[],1);
testlabel=Testclass;
disp(testlabel);
end