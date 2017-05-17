%how to run
%[ConfusionMat,MunkresOutoput,rearrangedMat,Accuracy]=custkmeancluster('D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project2&3\Project23_final\libsvm-3.21\libsvm-3.21\matlab\files\HandWrittenLetters.txt',26)
%[ConfusionMat,MunkresOutoput,rearrangedMat,Accuracy]=custkmeancluster('D:\projects\spring st se2 mining 2016 Jan-May 16\datamining 2162-CSE-5334-001-DATA-MINING--2016-Spring\project2&3\Project23_final\libsvm-3.21\libsvm-3.21\matlab\files\ATNTFaceImages400.txt',40)
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