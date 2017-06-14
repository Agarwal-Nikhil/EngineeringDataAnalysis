clc
clear all;
load 'Timber.dat';
E = Timber(1:50,5); %YoungsModulus, N/mm^2
P = 2000; %N
L = 4000; %mm
b = 150; %mm
h = 250; %mm
I = b*(h^3)/12;

E
%Fitting logn to mu and var
param = lognfit(E);

mu=param(1);
var=param(2);
CoV=sqrt(var/mu)

%create seeds for the montecarlo sims
seed=lognrnd(mu,var,1,1000);

u = P*(L^3)./(3*seed*I);

figure(1)
subplot(1,2,1)
hist(u,10)

title('Histogram diplacement')
subplot(1,2,2)
cdfplot(u)
title('CDF')

%figure(2)
% Compute and plot results. The results are sorted by "Bayesian information
% criterion".
%[D, PD] = allfitdist(u, 'PDF');

u_hat=sum(u>=40)/1000


