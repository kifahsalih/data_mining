function [data_new] = msdcus(data,no_dim_redu)
    no_dim=no_dim_redu;
    X=data(2:end,:)';
    label=data(1:1,:);
    %%find distance matrix
    E=X.^2;
    F=size(E,1);
    SS=sum(E.*E,2);
    WW1=repmat(SS,1,F);
    WW2=repmat(SS',F,1);
    D=WW1+WW2-2*(E*E');
    D(D<0)=0;
    D=sqrt(D); %  
  
    
    %%Compute MSD
    n = size(D,1);
    J = eye(n) - ones( n)/n;
    B1 = -(1/2) * J*D*J;
    [U,S,V] = svd(B1);
    row_to_reduce = 1:no_dim;
    X_new = U(:,row_to_reduce)*S(row_to_reduce,row_to_reduce)^(1/2);
   % newD=Xout'; %new set of data- retru the label after this
    data_new=[label;X_new'];
end

    
