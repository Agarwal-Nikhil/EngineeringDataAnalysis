%
clc;
clear all;

% plot the independent binormal distribution
% function handle with two input variables x1 and x2 that are each normally distributed:

pdf_binormal = @(x1,x2) normpdf(x1,10,5).*normpdf(x2,10,5);

% define a meshgrid, thus a Rectangular grid in 2-D space:

[x,y] = meshgrid([-10:1:30],[-10:1:30]);

% apply the function fun, z is the binormal distribution:
z = pdf_binormal(x,y);

% create a surface plot of the probability density function (pdf)
figure(1)
surf(x,y,z);

% create a contour plot of the pdf:
figure(2)
contour(x,y,z,10);

