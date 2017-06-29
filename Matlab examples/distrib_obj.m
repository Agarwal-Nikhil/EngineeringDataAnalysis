%
clc;
clear all;

p = makedist('norm','mu',10,'sigma',5);

figure(1)
x = [-10:1:30];
y = pdf(x,p);
plot(x,y);

figure(2)
y = cdf(x,p);
plot(x,y);

figure(1)
hold on;

zeta = sqrt(log(sigma^2/mu^2+1));
lambda = log(mu)-zeta^2/2;

y = lognpdf(x,lambda,zeta);
plot(x,y,'color','r');



