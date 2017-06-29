function DistributionFitting(EmpData, Identifier)
    mu = mean(EmpData)
    sigma = std(EmpData)
    
    %% Analytical Distribution Fitting
    %3 Fit the Standard distribution using a distribution object
    pwWeibull = fitdist(EmpData,'Weibull');
    pwLogNormal = fitdist(EmpData,'Lognormal');
    pwNormal = fitdist(EmpData,'Normal');
    pwHalfNormal = fitdist(EmpData,'HalfNormal');
    pwExponential = fitdist(EmpData,'Exponential');
    pwLogistic = fitdist(EmpData,'Logistic');
    pwLogLogistic = fitdist(EmpData,'Loglogistic');
    pwExtremeValue = fitdist(EmpData,'ExtremeValue');
    pwRayleigh = fitdist(EmpData,'Rayleigh');
    
    %% PDF Plots
    figure()
    x = linspace(0.5*min(EmpData),1.5*max(EmpData),100);
    [n,y] = hist(EmpData,10);
    b = bar(y,n,'hist');
    set(b,'FaceColor',[1,0.8,0]);
    hold on
    area = sum(n)*(y(2)-y(1));
    
    y = pdf(pwWeibull,x);
    line(x,y*area,'color','r');
    y = pdf(pwLogNormal,x);
    line(x,y*area,'color','b');
    y = pdf(pwNormal,x);
    line(x,y*area,'color','g');
    y = pdf(pwHalfNormal,x);
    plot(x,y*area,'color','y');
    y = pdf(pwExponential,x);
    plot(x,y*area,'color','m');
    y = pdf(pwLogistic,x);
    plot(x,y*area,'color','c');
    y = pdf(pwLogLogistic,x);
    plot(x,y*area,'-.r*');
    y = pdf(pwExtremeValue,x);
    plot(x,y*area,'-.b*');
    y = pdf(pwRayleigh,x);
    plot(x,y*area,'-.g*');
    legend('Empirical Data', 'Weibull','LogNormal', 'Normal', 'HalfNormal',...
        'Exponential', 'Logistic','LogLogistic', 'ExtremeValue', 'Rayleigh')
    %}
    Title = ['Fiting Various Distribution to ',Identifier];
    title(Title)
    xlabel('Bins') % x-axis label
    ylabel('Frequency') % y-axis label
    hold off
    
    %% Quantile Quantile Probability plots
    figure()
    
    subplot(3,3,1)
    probplot('weibull',EmpData);
    
    subplot(3,3,2)
    probplot('lognormal',EmpData);
    
    subplot(3,3,3)
    probplot('normal',EmpData);
    
    subplot(3,3,4)
    probplot('half normal',EmpData);
    
    subplot(3,3,5)
    probplot('exponential',EmpData);
    
    subplot(3,3,6)
    probplot('logistic',EmpData);
    
    subplot(3,3,7)
    probplot('loglogistic',EmpData);
    
    subplot(3,3,8)
    probplot('extreme value',EmpData);
    
    subplot(3,3,9)
    probplot('rayleigh',EmpData);
    
%   ha = axes('Position',[0 0 1 1],'Xlim',[0 1],'Ylim',[0 1],'Box','off','Visible','off','Units','normalized', 'clipping' , 'off');
    Title = ['Q-Q Plot of ',Identifier];
    text(0.5, 1,Title,'HorizontalAlignment' ,'center','VerticalAlignment', 'top')  
    hold off
%% Loglogistic Distribution Parameters
disp(Identifier)
pwLogLogistic
end