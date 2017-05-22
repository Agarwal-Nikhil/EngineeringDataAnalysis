clear;
clc;

%% Import Data and Data Extraction
load 'EuropeanWindStorms.dat'
ws_denmark= EuropeanWindStorms(:,2);

for i=1:size(ws_denmark, 1)
    if( ws_denmark(i) == 0)
        ws_denmark(i) = 0.5;
    end
end

%% Computing Weibull Distribution Parameters 
[Shape, Scale] = Weibull_fit_dist(ws_denmark);

%% Plot and Compare CDF
storm = 1:52;
figure(1)
cdfplot(ws_denmark);
% cdfplot: Empirical cumulative distribution function plot: https://de.mathworks.com/help/stats/cdfplot.html
hold on
wx = 0:1:52;
wy = wblcdf(wx, Scale, Shape);
% https://de.mathworks.com/help/stats/wblcdf.html
plot(wx, wy, 'm');
title('Cumulative Distribution of Denmark Wind Speed')
xlabel('Storm Event')
ylabel('Probability')
legend('Empirical CDF','Theoretical CDF','Location','NW')
hold off
%% Fitting other distribution
figure(2) 
hold on;
pdW = makedist('Weibull','a',Scale,'b',Shape);
xW = 1:1:52;
yW = pdf(pdW,xW);
plot(xW,yW, 'm');
pdN = fitdist(yW','Normal');
% https://de.mathworks.com/help/stats/fitdist.html#btu54gt-4
yN = pdf(pdN, xW);
plot(xW, yN, 'b', 'LineWidth', 1)
title('Probability Distribution of Denmark Wind Speed')
xlabel('Storm Event')
ylabel('Probability')
legend('Weibull PDF','Normal CDF','Location','NW')
hold off;