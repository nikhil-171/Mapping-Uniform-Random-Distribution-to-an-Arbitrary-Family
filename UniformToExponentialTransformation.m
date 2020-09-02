%This project takes a random distribution of n number of points and maps the points the a exponential random variable distribution.
%Being able to map random data points to a specific distribution will allow you to further analyze data for patterns.   
%In order to map to laplace random variable I had used the inverse transform method to get the function for the laplace distibution(y_exp). 
%Exponential distribution anaylsis is largely used model the time between two events. For example, how long a customer stays of a website and estimating the time of a hardware malfunction.  
clear all
n = input('Enter number of points >');
b = 3;
u = rand(1,n);
y_exp= -log(u)/b;               %inverse transform method
[N_samp,x]=hist(y_exp,20);
subplot(2,1,1)
bar(x,N_samp,1)
ylabel('Number of Samples')         %making a histogram with the random points 
xlabel('Independent Variable -x')
subplot(2,1,2)
y=b*exp(-3*x);
del_x=x(3)-x(2);
p_hist = N_samp/n/del_x;
plot(x,y,'k',x,p_hist,'ok')             %ploting the random points along the exponential random variable distribution
ylabel('Probability Density')
xlabel('Independent Variable - x')
legend('true pdf','samples from histogram')









