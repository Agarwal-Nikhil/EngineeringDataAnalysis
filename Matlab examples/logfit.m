function par = logfit( data )
% Function that fits the lognormal distribution 
% applying the method of moments


mu = mean(data);
sigma = std(data);

zeta = sqrt(log(sigma^2/mu^2+1));
lambda = log(mu)-zeta^2/2;

par = [lambda zeta];

end

