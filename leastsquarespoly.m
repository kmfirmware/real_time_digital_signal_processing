load SampleData.txt -ascii
N=SampleData(end,1)+1;
y=SampleData(:,2);
Ts=1/N;
Npoly=6;
v=[0:Ts:((N-1)*Ts)]';
A=zeros(length(v), Npoly);
for i = Npoly : -1 : 1
   A(:,i) = v.^i;
end
[Q, R] = qr(A);
z = Q' * y;
x = R \ z;
yhat = A * x;
plot(0:N-1,y,'k',0:N-1,yhat,'rs');
