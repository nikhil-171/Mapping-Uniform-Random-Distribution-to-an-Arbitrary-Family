clear all
n = input('Enter number of points >');
varX=2/9;
b = sqrt(varX/2);
m=0;
u = rand(1,n);
y_exp= b*log(2*u)-m; %x<=m
y_exp1= -b*log(2-(2*u))+m;  %x>=m
[N_samp,x]=hist(y_exp,20);
[N_samp1,x1]=hist(y_exp1,20);
subplot(2,1,1)
bar(x,N_samp,1)
hold on
bar(x1,N_samp1,1)
ylabel('Number of Samples')
xlabel('Independent Variable -x')
subplot(2,1,2)
y=(1/(2*b))*exp(-1*abs(x-m)/b);
y1=(1/(2*b))*exp(-1*abs(x1-m)/b);
del_x=x(3)-x(2);
del_x1=x1(3)-x1(2);
p_hist = N_samp/n/del_x;
p_hist1 = N_samp1/n/del_x1;
plot(x,y,'k',x,p_hist,'ok')
hold on
plot(x1,y1,'k',x1,p_hist1,'ok')
ylabel('Probability Density')
xlabel('Independent Variable - x')
legend('true pdf','samples from histogram')
