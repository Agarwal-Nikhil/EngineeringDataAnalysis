clc;
clear all;

% plot the sinus function
figure (1)
x = linspace(0,2*pi,50);  % create a vector from 0 to 2*pi within 50 increments
plot(x,sin(x));

% plot the natural logarithm
figure(2)
y = [1:50];                    % create a vector from 1 to 50 in steps of 1
plot(y,log(y));

title('natural logarithm')     % add a title
% 

% add another curve to figure 1
figure(1)
hold all                       % to not delete the former plot!
plot(x,sin(x+pi/2));
% add legend
legend('f1','f2')

