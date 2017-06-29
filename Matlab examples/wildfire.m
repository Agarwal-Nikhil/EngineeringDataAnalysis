%
clc;
clear all;
% Define the function to be integrated: 
% pdf function of diameter of burnt area):
mu = 100;
pdf_area = @(d) pi/4*d.^2.*exppdf(d,mu);

% Compute an indefinite integral by a quadrature function
EA = quadgk(pdf_area,0,Inf);
% quadgk(fun,a,b): numerical approximation of the integral of a scalar-valued
% function fun from a to b! Method: Gauss-Kronrod quadrature







% %% ALTERNATIVE:
% % Compute the mean with Monte Carlo
% % Generate random numbers
% dsam = exprnd(mu,1000,1);
% % Evaluate the function
% feval = pi/4*dsam.^2;
% % Estimate the mean
% EA_MC = mean(feval);
