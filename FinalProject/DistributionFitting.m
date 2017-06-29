function DistributionFitting(EmpData)
mu = mean(EmpData);
sigma = std(EmpData);

%% Analytical Distribution Fitting: 3 Alternate methods to find Weibull Parmeters
%1 Parameters of Weibull distribution (Method of Moments):
k = fzero(@(x) sqrt(gamma(1+2/x)-gamma(1+1/x)^2)/gamma(1+1/x)-sigma/mu,2);
u = mu/gamma(1+1/k);
%2 Fit the Weibull distribution using wblfit:
pw1=wblfit(EmpData);
%3 Fit the Weibull distribution using a distribution object
pw = fitdist(EmpData,'wbl');

%% Graphical Distribution Fitting: 2 Alternate methods to plot Weibull Cdf to given data
% Compare empirical and Weibull CDFs
figure()
cdfplot(EmpData);
hold on;
x = linspace(0.5*min(EmpData),1.5*max(EmpData),100);

% First Method
%y = wblcdf(x,u,k);

% Second Method
y = cdf(pw,x);

plot(x,y,'color','r');

% Probability plots
figure()
subplot(3,3,1)
probplot('weibull',EmpData);

subplot(3,3,2)
probplot('lognormal',EmpData);

subplot(3,3,3)
probplot('normal',EmpData);

subplot(3,3,4)
probplot('half normal',EmpData);

subplot(3,3,5)
probplot('exponential',EmpData);

subplot(3,3,6)
probplot('logistic',EmpData);

subplot(3,3,7)
probplot('loglogistic',EmpData);

subplot(3,3,8)
probplot('extreme value',EmpData);

subplot(3,3,9)
probplot('rayleigh',EmpData);
end