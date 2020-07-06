clear all
n = input('Enter number of points >');
b = 3;
u = rand(1,n);
y_exp= -log(u)/b;
[N_samp,x]=hist(y_exp,20);
subplot(2,1,1)
bar(x,N_samp,1)
ylabel('Number of Samples')
xlabel('Independent Variable -x')
subplot(2,1,2)
y=b*exp(-3*x);
del_x=x(3)-x(2);
p_hist = N_samp/n/del_x;
plot(x,y,'k',x,p_hist,'ok')
ylabel('Probability Density')
xlabel('Independent Variable - x')
legend('true pdf','samples from histogram')









