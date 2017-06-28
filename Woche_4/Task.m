clc
clear all;
load 'Timber.dat';
E = Timber(1:50,5); %YoungsModulus, N/mm^2
P = 2000; %N
L = 4000; %mm
b = 150; %mm
h = 250; %mm
I = b*(h^3)/12;

%Fitting logn to mu and var
param = lognfit(E);

mu=param(1);
sd=param(2);
%CoV=

%create seeds for the montecarlo sims
seed=lognrnd(mu,sd,1,10000);

u = P*(L^3)./(3*seed*I);

figure(1)
%normal
subplot(2,2,1)
histfit(u,10,'normal')
title('Histogram diplacement Normal')

%lognormal
subplot(2,2,2)
histfit(u,10,'lognormal')
title('Histogram diplacement Lognormal')

%weibull
subplot(2,2,3)
histfit(u,10,'weibull')
title('Histogram diplacement Weibull')

subplot(2,2,4)
cdfplot(u)
title('CDF')

%figure(2)
Iu = u > 40;
Pf = sum(Iu)/size(u,2)    % Probability of failure

%Target sample size 
delta_t = 0.1;              
% new number of samples
nsam = 1/delta_t^2/Pf

