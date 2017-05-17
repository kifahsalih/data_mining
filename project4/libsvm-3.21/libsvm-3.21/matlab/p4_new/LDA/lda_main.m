function [ldares]= lda_main(kva,infile,method,opt1,opt2,flg)
if strcmp(flg,'B')
    ldasamp = dlmread(infile,',',0,0);
    %ldasamp=infile;
    ldadata= dlmread(infile,',',1,0);
    %ldadata=infile(2:end,:);
    ldatrlbl=ldasamp(1,1:end);
    [unq,~,~]=unique(ldatrlbl);
    clsn=max(unq);
    dim=clsn-1;
    [mappedX, ~] = lda(ldadata', ldatrlbl, dim);
    ldamat = mappedX';
    ldamat = [ldatrlbl;ldamat];
    %[traindata,ldavecs]=ldadr(ldadata,ldatrlbl');
    %ldavecs=1;
    %[splitfile,classlabel,difflabel,accur,taccprint]=ldakfolds(kva,A,ldavecs,method,opt1,opt2);
    [taccprint]=customkfolds(kva,ldamat,method,opt1,opt2,'LDA',0);
%else
    %[taccprint]=customkfolds(kva,infile,method,opt1,opt2,'LDA',10);
end
ldares=taccprint;
end