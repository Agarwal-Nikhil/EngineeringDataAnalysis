function [ h ] = MonteCarloSim(mu,sd, nsam,Cr,a,beta )
%MONTECARLOSIM Summary of this function goes here
%   Detailed explanation goes here

    Q=normrnd(mu,sd,nsam,1);
    
    h=exp((log(Q)-log(Cr))./beta)-a;


end

