R=7;
M=4/pi;
N = input('Enter number of points >');
fx=zeros(1,N);
u1=rand(1,N);
u2=rand(1,N);
v1=R*u1;
v2=(M/R)*rand(1,N);
kpts=0;
for k=1:N
    if v2(k)<(M/(R*R))*sqrt(R*R-v1(k)*v1(k))
        kpts=kpts+1;
        fx(kpts)=v1(k);
    end
end
fx=fx(1:kpts);
[N_samp,x]=hist(fx,20);
subplot(2,1,1)
bar(x,N_samp,1)
ylabel('Number of Samples')
xlabel('Independent Variable - x')
subplot(2,1,2)
yt = (M/R/R)*sqrt(R*R-x.*x);
del_x=x(3)-x(2);
p_hist=N_samp/kpts/del_x;
plot(x,yt,'k',x,p_hist,'ok')
ylabel('Probability Density')
xlabel('Independent Variable - x')
legend('true pdf','samples from histogram')
text=['The number of points accpeted is ', num2str(kpts,15),' and N is',num2str(N,15),'.'];
disp(text)

        