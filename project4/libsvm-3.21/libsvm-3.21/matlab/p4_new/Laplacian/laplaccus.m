 function [data_new] = laplaccus(data,no_dim_redu)
    r=no_dim_redu;
    X=data(2:end,:)';
    label=data(1:1,:);
 
%     K_=X.^2;
%     N=size(K_,1);
%     XX=sum(K_.*K_,2);
%     XX1=repmat(XX,1,N);
%     XX2=repmat(XX',N,1);
%     D=XX1+XX2-2*(K_*K_');
    D=pdist(X);
    D=squareform(D);
    D(D<0)=0;
    D=sqrt(D);
    para=max(D(:));
    K=exp(-D./(2*para.^2));

    W=K;
    D=diag(sum(W,2));
    L=D-W;
    [eigvec,eigval]=eig(L,D);
    diag_eig_vals = diag(eigval);
    [sorted_eig_vals,sorted_eig_vals_index]=sort(diag_eig_vals,'ascend'); 
    LDA_vec = eigvec(:,sorted_eig_vals_index(2:r+1))';
    data_new=[label;LDA_vec];
 end

