%%Basic Descriptive Statistical Data for Isar(Hofkirchen)

%% Centeral Tendencies 

%% Mean

mean_DailyMeanDischargeHofkirchen=mean(MeanHofkirchen);
mean_DailyMaxDischargeHofkirchen=mean(MaxHofkirchen);
mean_DailyMinDischargeHofkirchen=mean(MinHofkirchen);

%% Mode

mode_DailyMeanDischargeHofkirchen=mode(MeanHofkirchen);
mode_DailyMaxDischargeHofkirchen=mode(MaxHofkirchen);
mode_DailyMinDischargeHofkirchen=mode(MinHofkirchen);

%% Median

median_DailyMeanDischargeHofkirchen=median(MeanHofkirchen);
median_DailyMaxDischargeHofkirchen=median(MaxHofkirchen);
median_DailyMinDischargeHofkirchen=median(MinHofkirchen);
%% Dispersion

%% variance
var_DailyMeanDischargeHofkirchen=var(MeanHofkirchen);
var_DailyMaxDischargeHofkirchen=var(MaxHofkirchen);
var_DailyMinDischargeHofkirchen=var(MinHofkirchen);

%% std. deviation
sd_DailyMeanDischargeHofkirchen=sqrt(var_DailyMeanDischargeHofkirchen);
sd_DailyMaxDischargeHofkirchen=sqrt(var_DailyMaxDischargeHofkirchen);
sd_DailyMinDischargeHofkirchen=sqrt(var_DailyMinDischargeHofkirchen);

%% Range

max_DailyMeanDischargeHofkirchen=max(MeanHofkirchen);
max_DailyMaxDischargeHofkirchen=max(MaxHofkirchen);
max_DailyMinDischargeHofkirchen=max(MinHofkirchen);

min_DailyMeanDischargeHofkirchen=min(MeanHofkirchen);
min_DailyMaxDischargeHofkirchen=min(MaxHofkirchen);
min_DailyMinDischargeHofkirchen=min(MinHofkirchen);

range_DailyMeanDischargeHofkirchen=range(MeanHofkirchen);
range_DailyMaxDischargeHofkirchen=range(MaxHofkirchen);
range_DailyMinDischargeHofkirchen=range(MinHofkirchen);
%% Quartile/Outlier

p=[0.25, 0.5, 0.75];
Quartile_DailyMeanDischargeHofkirchen= quantile(MeanHofkirchen,p);
lowOutliers_DailyMeanDischargeHofkirchen= sum(MeanHofkirchen<(Quartile_DailyMeanDischargeHofkirchen(1)-3*(Quartile_DailyMeanDischargeHofkirchen(3)-Quartile_DailyMeanDischargeHofkirchen(2))) );
highOutliers_DailyMeanDischargeHofkirchen= sum(MeanHofkirchen>(Quartile_DailyMeanDischargeHofkirchen(3)+3*(Quartile_DailyMeanDischargeHofkirchen(3)-Quartile_DailyMeanDischargeHofkirchen(2))) );

Quartile_DailyMaxDischargeHofkirchen= quantile(MaxHofkirchen,p);
lowOutliers_DailyMaxDischargeHofkirchen= sum(MaxHofkirchen<(Quartile_DailyMaxDischargeHofkirchen(1)-3*(Quartile_DailyMaxDischargeHofkirchen(3)-Quartile_DailyMaxDischargeHofkirchen(2))) );
highOutliers_DailyMaxDischargeHofkirchen= sum(MaxHofkirchen>(Quartile_DailyMaxDischargeHofkirchen(3)+3*(Quartile_DailyMaxDischargeHofkirchen(3)-Quartile_DailyMaxDischargeHofkirchen(2))) );

Quartile_DailyMinDischargeHofkirchen= quantile(MinHofkirchen,p);
lowOutliers_DailyMinDischargeHofkirchen= sum(MinHofkirchen<(Quartile_DailyMinDischargeHofkirchen(1)-3*(Quartile_DailyMinDischargeHofkirchen(3)-Quartile_DailyMinDischargeHofkirchen(2))) );
highOutliers_DailyMinDischargeHofkirchen= sum(MinHofkirchen>(Quartile_DailyMinDischargeHofkirchen(3)+3*(Quartile_DailyMinDischargeHofkirchen(3)-Quartile_DailyMinDischargeHofkirchen(2))) );

%% Histogram
figure(2)

subplot(3,2,1)
histogram(MinHofkirchen,50)
xlabel('Daily Min Discharge(m^3/s) of Danube')
ylabel('No. of occurences')
subplot(3,2,2)
cdfplot(MinHofkirchen)

subplot(3,2,3)
histogram(MeanHofkirchen,50)
xlabel('Daily Mean Discharge(m^3/s) of Danube')
ylabel('No. of occurences')
subplot(3,2,4)
cdfplot(MeanHofkirchen)

subplot(3,2,5)
histogram(MaxHofkirchen,50)
xlabel('Daily Max Discharge(m^3/s) of Danube')
ylabel('No. of occurences')
subplot(3,2,6)
cdfplot(MaxHofkirchen)

ha = axes('Position',[0 0 1 1],'Xlim',[0 1],'Ylim',[0 1],'Box','off','Visible','off','Units','normalized', 'clipping' , 'off');

text(0.5, 1,'\bf Plot of some descriptive Satatistics of Danube','HorizontalAlignment' ,'center','VerticalAlignment', 'top')

