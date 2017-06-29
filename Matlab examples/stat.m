
function [ mean, stdev ] = stat( data,u,v )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

mean = sum(data)/length(data);
var = sum((data-mean).^2)/(length(data)- 1);
stdev = sqrt(var); 


end

