clc
clear all;
load 'Timber.dat';
E = Data_Assignment(1:50,5); %YoungsModulus, N/mm^2
P = 2000; %N
L = 4000; %mm
b = 150; %mm
h = 250; %mm
I = b*(h^3)/12;
u = P*(L^3)./(3*E*I);
n = 50;

Mean = mean(u);
Median = median(u);
StandardDeviationCalculated = sqrt(sum((Mean - u).^2)/(n-1));
StandardDeviationFunction = std(u); 

Range = range(E);

%% Pendind Task
%Calculate the quantiles of the displacements for the cumulative probabilities 0.025, 0.25, 0.5, 0.75, and 0.975.
%%
whos
save ProcessedData.mat