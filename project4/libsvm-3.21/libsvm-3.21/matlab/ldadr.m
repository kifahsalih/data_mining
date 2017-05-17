function [ldatrain,ldavect] = ldadr(traindata,trainlabel) 
    [d,~]=size(traindata);
    clslbls=unique(trainlabel');
    noofclasses = size(clslbls,2);
    r=noofclasses-1;
    meanec = cell(1,noofclasses);
    covec  = cell(1,noofclasses);
    sizec  = zeros(1,noofclasses);
    i=1;
    for index=unique(trainlabel')
        temtrain=traindata(:,trainlabel==index);
        meanec(i) = {mean(temtrain,2)};
        covec(i)  = {cov(temtrain')};
        sizec(i)  = size(temtrain,2);
        i=i+1;
    end
    gmean = zeros(d,1); 
    for i = 1:noofclasses
        gmean = gmean+meanec{i};
    end
    gmean=gmean./noofclasses;
    sbmat = zeros(d,d);
    swmat = zeros(d,d);
    for i = 1: noofclasses
        sbmat = sbmat + sizec(i).*(meanec{i}...
            -gmean)*(meanec{i}-gmean)';
        swmat = swmat + covec{i};
    end
    % use pseudio inverse of matrix
    swmatinv = pinv(swmat);
    mulswinvsb = swmatinv * sbmat;
    [eig_vecs,eig_vals] = eig(mulswinvsb);
    diag_eig_vals = diag(eig_vals);
    % sort by using diag_eig_vals
    [~,sorted_eig_vals_index]=sort(diag_eig_vals,'descend');  
    % select the vectors from 1 to r
    ldavect = eig_vecs(:,sorted_eig_vals_index(1:r)); 
    % LDA_projection is the LDA dimentional reduced matrix of training data
    ldatrain = ldavect'*traindata;    
end