%%Basic Descriptive Statistical Data for Isar(Platting)

%% Centeral Tendencies 

%% Mean

mean_DailyMeanDischargePlatting=mean(MeanPlatting);
mean_DailyMaxDischargePlatting=mean(MaxPlatting);
mean_DailyMinDischargePlatting=mean(MinPlatting);

%% Mode

mode_DailyMeanDischargePlatting=mode(MeanPlatting);
mode_DailyMaxDischargePlatting=mode(MaxPlatting);
mode_DailyMinDischargePlatting=mode(MinPlatting);
%% Median

median_DailyMeanDischargePlatting=median(MeanPlatting);
median_DailyMaxDischargePlatting=median(MaxPlatting);
median_DailyMinDischargePlatting=median(MinPlatting);
%% Dispersion

%% variance
var_DailyMeanDischargePlatting=var(MeanPlatting);
var_DailyMaxDischargePlatting=var(MaxPlatting);
var_DailyMinDischargePlatting=var(MinPlatting);

%% std. deviation
sd_DailyMeanDischargePlatting=sqrt(var_DailyMeanDischargePlatting);
sd_DailyMaxDischargePlatting=sqrt(var_DailyMaxDischargePlatting);
sd_DailyMinDischargePlatting=sqrt(var_DailyMinDischargePlatting);

%% Range

max_DailyMeanDischargePlatting=max(MeanPlatting);
max_DailyMaxDischargePlatting=max(MaxPlatting);
max_DailyMinDischargePlatting=max(MinPlatting);

min_DailyMeanDischargePlatting=min(MeanPlatting);
min_DailyMaxDischargePlatting=min(MaxPlatting);
min_DailyMinDischargePlatting=min(MinPlatting);

range_DailyMeanDischargePlatting=range(MeanPlatting);
range_DailyMaxDischargePlatting=range(MaxPlatting);
range_DailyMinDischargePlatting=range(MinPlatting);
%% Quantile/Outlier

p=[0.25, 0.5, 0.75];
Quantile_DailyMeanDischargePlatting= quantile(MeanPlatting,p);
lowOutliers_DailyMeanDischargePlatting= sum(MeanPlatting<(Quantile_DailyMeanDischargePlatting(1)-3*(Quantile_DailyMeanDischargePlatting(3)-Quantile_DailyMeanDischargePlatting(2))) );
highOutliers_DailyMeanDischargePlatting= sum(MeanPlatting>(Quantile_DailyMeanDischargePlatting(3)+3*(Quantile_DailyMeanDischargePlatting(3)-Quantile_DailyMeanDischargePlatting(2))) );

Quantile_DailyMaxDischargePlatting= quantile(MaxPlatting,p);
lowOutliers_DailyMaxDischargePlatting= sum(MaxPlatting<(Quantile_DailyMaxDischargePlatting(1)-3*(Quantile_DailyMaxDischargePlatting(3)-Quantile_DailyMaxDischargePlatting(2))) );
highOutliers_DailyMaxDischargePlatting= sum(MaxPlatting>(Quantile_DailyMaxDischargePlatting(3)+3*(Quantile_DailyMaxDischargePlatting(3)-Quantile_DailyMaxDischargePlatting(2))) );

Quantile_DailyMinDischargePlatting= quantile(MinPlatting,p);
lowOutliers_DailyMinDischargePlatting= sum(MinPlatting<(Quantile_DailyMinDischargePlatting(1)-3*(Quantile_DailyMinDischargePlatting(3)-Quantile_DailyMinDischargePlatting(2))) );
highOutliers_DailyMinDischargePlatting= sum(MinPlatting>(Quantile_DailyMinDischargePlatting(3)+3*(Quantile_DailyMinDischargePlatting(3)-Quantile_DailyMinDischargePlatting(2))) );

%% Histogram
figure(1)

subplot(3,2,1)
histogram(MinPlatting,50)
xlabel('Daily Min Discharge(m^3/s) of Isar')
ylabel('No. of occurences')
subplot(3,2,2)
cdfplot(MinHofkirchen)

subplot(3,2,3)
histogram(MeanHofkirchen,50)
xlabel('Daily Mean Discharge(m^3/s) of Isar')
ylabel('No. of occurences')
subplot(3,2,4)
cdfplot(MeanHofkirchen)

subplot(3,2,5)
histogram(MaxHofkirchen,50)
xlabel('Daily Max Discharge(m^3/s) of Isar')
ylabel('No. of occurences')
subplot(3,2,6)
cdfplot(MaxHofkirchen)

ha = axes('Position',[0 0 1 1],'Xlim',[0 1],'Ylim',[0 1],'Box','off','Visible','off','Units','normalized', 'clipping' , 'off');

text(0.5, 1,'\bf Plot of some descriptive Satatistics of Danube','HorizontalAlignment' ,'center','VerticalAlignment', 'top')
