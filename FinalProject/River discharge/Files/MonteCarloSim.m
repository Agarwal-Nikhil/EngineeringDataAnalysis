function [ h ] = MonteCarloSim(mu,sd,nsam,Cr,a,beta )
%MONTECARLOSIM Summary of this function goes here
%   Detailed explanation goes here
%Y = random(name,A,B,m,n,...) 

Q = random('loglogistic',mu,sd,[nsam,1]);

%Q = random(pr,nsam,1);
       
    h=exp((log(Q)-log(Cr))./beta)-a;


end

