clc;
clear all;

%% Generate random samples
% Number of samples for Monte Carlo simulation:
nsam = 1000;

% Capacity parameters:
muR = 100;
sigmaR = 10;
% Demand parameters:
muS = 50;
sigmaS = 12.5;

% Assumption: R and S are normally distributed:

% Rsam = normrnd(muR,sigmaR,nsam,1);

pr = makedist('norm','mu',muR,'sigma',sigmaR);
Rsam = random(pr,nsam,1);
% Ssam = normrnd(muS,sigmaS,nsam,1);
ps = makedist('norm','mu',muS,'sigma',sigmaS);
Ssam = random(ps,nsam,1);


%% Compute the indicator samples:
%  Find cases, where the demand is larger than the capacity:
Iu = Ssam > Rsam;
if any(Iu)
    Pf = sum(Iu)/nsam      % Probability of failure
end

% Scatter plot
figure(1)
scatter(Rsam,Ssam);

hold on
x=0:1:100;
plot(x,x,'color','black');

hold off


%% Required number of samples:
% Target coefficient of variation: 

delta_t = 0.2;              
% new number of samples
nsam = 1/delta_t^2/Pf;




