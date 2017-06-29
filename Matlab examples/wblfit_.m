%
clc;
clear all;

load Timber.dat;
s = Timber(:,3);    % tensile strength data

% Sample mean and standard deviation
mu = mean(s);
sigma = std(s);

% Parameters of Weibull distribution (Method of Moments):
k = fzero(@(x) sqrt(gamma(1+2/x)-gamma(1+1/x)^2)/gamma(1+1/x)-sigma/mu,2);
u = mu/gamma(1+1/k);

%%
% Fit the Weibull distribution using wblfit:
pw1=wblfit(s);
% Fit the Weibull distribution using a distribution object
pw = fitdist(s,'wbl');

% Compare empirical and Weibull CDFs
figure(1)
cdfplot(s);
hold on;
x = linspace(0.5*min(s),1.5*max(s),100);
% two options: 
%y = wblcdf(x,u,k);
y = cdf(pw,x);
plot(x,y,'color','r');

% Probability plots
figure(2)
probplot('weibull',s);

figure(3)
probplot('lognormal',s);
