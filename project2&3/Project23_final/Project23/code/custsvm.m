function[svmtestlabel] = custsvm(svtrain,svtest,svtraincl,svtestcl,svmthod)
trcls=svtraincl';
tscls=svtestcl';
trn=svtrain';
tst=svtest';
if svmthod==1
    model = svmtrain(trcls, trn, '-s 0 -t 0');
else
    model = svmtrain(trcls, trn, '-s 1 -t 2');
end;
[predict_label, ~, ~]=svmpredict(tscls,tst,model);
svmtestlabel=predict_label';
end