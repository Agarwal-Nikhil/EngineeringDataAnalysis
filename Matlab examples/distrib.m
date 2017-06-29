%
clc;
% clear all;
mu = 10;
sigma = 5;
% Plot the PDF of the normal distribution
figure(1)
x = [-10:1:30];
y = normpdf(x,mu,sigma);
plot(x,y);


% Plot the CDF of the normal distribution
figure(2)
y = normcdf(x,mu,sigma);
plot(x,y);

% Plot the PDF of the normal distribution using a distribution object
figure(3)
pn = makedist('norm','mu',10,'sigma',5);
y = pdf(pn,x);
plot(x,y);


hold on;

%%
% Compare with the PDF of the lognormal distribution
% Method of Moments:
zeta = sqrt(log(sigma^2/mu^2+1));
lambda = log(mu)-zeta^2/2;

pl = makedist('logn','mu',lambda,'sigma',zeta);
% y = pdf(pl,x);
y = lognpdf(x,lambda,zeta);

plot(x,y,'color','r');

