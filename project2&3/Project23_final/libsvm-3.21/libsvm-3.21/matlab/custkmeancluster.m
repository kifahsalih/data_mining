
function [con_mat,mopt,mf,tempacc]=custkmeancluster(inpfile,kvl)
prfile = dlmread(inpfile,',',0,0);
dtrain= prfile(2:end,1:end);
dlbl=prfile(1,:);
totimgs=size(dtrain,2);
dindx= kmeans(dtrain',kvl);
tl=length(dindx);
con_mat=zeros(kvl);
for i=1:tl
    j=dindx(i);
    q=dlbl(i);
    con_mat(j,q)= con_mat(j,q)+1;
end
[mopt]=munkres(-con_mat);
mf=con_mat(:,mopt);
dgsum=sum(diag(con_mat(:,mopt)));
accrcy=(dgsum/totimgs)*100;
% fprintf('Predicted Labels');
% disp(dindx');
fprintf('Confusion Matrix\n');
disp(con_mat);
fprintf('Munkres Output');
disp(mopt);
fprintf('Confusion Matrix After Arranging Based on Munkres Output\n');
disp(mf);
fprintf('Accuracy:');
tempacc=[num2str(accrcy),'%'];
disp(tempacc);
end