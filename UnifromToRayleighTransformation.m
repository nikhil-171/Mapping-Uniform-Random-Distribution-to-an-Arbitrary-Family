n = input('Enter number of points >');
varR = 3;
u = rand(1,n);
y_exp= sqrt(-2*varR*log(u));
[N_samp,r]=hist(y_exp,20);
subplot(2,1,1)
bar(r,N_samp,1)
ylabel('Number of Samples')
xlabel('Independent Variable -x')
subplot(2,1,2)
term1=r.*r/2/varR;
ray = (r/varR).*exp(-term1);
del_r=r(3)-r(2);
p_hist = N_samp/n/del_r;
plot(r,ray,'k',r,p_hist,'ok')
ylabel('Probability Density')
xlabel('Independent Variable - x')
legend('true pdf','samples from histogram')

