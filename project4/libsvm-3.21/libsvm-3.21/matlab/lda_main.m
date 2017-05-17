function [ldares]= lda_main(kva,infile,method,opt1,opt2,flg,dim)
ldavecs=0;
ldasamp = dlmread(infile,',',0,0);
ldadata= dlmread(infile,',',1,0);
ldatrlbl=ldasamp(1,1:end);
if strcmp(flg,'B')
     [mappedX, mapping] = lda(ldadata', ldatrlbl, 39);
     A = mappedX';
     A = [ldatrlbl;A];
    [traindata,ldavecs]=ldadr(ldadata,ldatrlbl');
    ldavecs=1;
    [splitfile,classlabel,difflabel,accur,taccprint]=ldakfolds(kva,A,ldavecs,method,opt1,opt2);
else
%    [splitfile,classlabel,difflabel,accur,taccprint]=ldakfolds(kva,ldasamp,ldavecs,method,opt1,opt2);
end
ldares=taccprint;
end