%% TimeSeries


    StartDate = datetime(2015,1,1);
    EndDate = datetime(2016,12,31);
    AnnualPeriodStart = (Date>=StartDate);
    AnnualPeriodEnd = (Date<=EndDate);
    AnnualPeriod = (AnnualPeriodStart & AnnualPeriodEnd);
    
%% Plot TimeSeries
figure(3)

subplot(3,1,1)
plot(StartDate:EndDate,MeanHofkirchen(AnnualPeriod),'.-b')
hold on
plot(StartDate:EndDate,MeanPlatting(AnnualPeriod),'.-r')
xlabel('Date')
ylabel('Daily Mean Discharge(m^3/s)')
legend('Danube','Isar')

subplot(3,1,2)
plot(StartDate:EndDate,MaxHofkirchen(AnnualPeriod),'.-b')
hold on
plot(StartDate:EndDate,MaxPlatting(AnnualPeriod),'.-r')
xlabel('Date')
ylabel('Daily Max Discharge(m^3/s)')
legend('Danube','Isar')

subplot(3,1,3)
plot(StartDate:EndDate,MinHofkirchen(AnnualPeriod),'.-b')
hold on
plot(StartDate:EndDate,MinPlatting(AnnualPeriod),'.-r')
xlabel('Date')
ylabel('Daily Min Discharge(m^3/s)')
legend('Danube','Isar')

ha = axes('Position',[0 0 1 1],'Xlim',[0 1],'Ylim',[0 1],'Box','off','Visible','off','Units','normalized', 'clipping' , 'off');

text(0.5, 1,'\bf Time Series of Discharge of Isar and Danube','HorizontalAlignment' ,'center','VerticalAlignment', 'top')


%% Summary Table
Rivers={'Danube';'Isar'};

Mean_DailyMeanDischarge=[mean_DailyMeanDischargeHofkirchen,mean_DailyMeanDischargePlatting ]';
Mean_DailyMaxDischarge=[mean_DailyMaxDischargeHofkirchen,mean_DailyMaxDischargePlatting ]';
Mean_DailyMinDischarge=[mean_DailyMinDischargeHofkirchen,mean_DailyMinDischargePlatting ]';

Mode_DailyMeanDischarge=[mode_DailyMeanDischargeHofkirchen,mode_DailyMeanDischargePlatting ]';
Mode_DailyMaxDischarge=[mode_DailyMaxDischargeHofkirchen,mode_DailyMaxDischargePlatting ]';
Mode_DailyMinDischarge=[mode_DailyMinDischargeHofkirchen,mode_DailyMinDischargePlatting ]';

Median_DailyMeanDischarge=[median_DailyMeanDischargeHofkirchen,median_DailyMeanDischargePlatting ]';
Median_DailyMaxDischarge=[median_DailyMaxDischargeHofkirchen,median_DailyMaxDischargePlatting ]';
Median_DailyMinDischarge=[median_DailyMinDischargeHofkirchen,median_DailyMinDischargePlatting ]';

CentralTendency=table(Mean_DailyMeanDischarge,Mean_DailyMaxDischarge,Mean_DailyMinDischarge,Mode_DailyMeanDischarge,Mode_DailyMinDischarge,Mode_DailyMaxDischarge,Median_DailyMeanDischarge,Median_DailyMinDischarge,Median_DailyMaxDischarge,'RowNames',Rivers)

Var_DailyMeanDischarge=[var_DailyMeanDischargeHofkirchen,var_DailyMeanDischargePlatting ]';
Var_DailyMaxDischarge=[var_DailyMaxDischargeHofkirchen,var_DailyMaxDischargePlatting ]';
Var_DailyMinDischarge=[var_DailyMinDischargeHofkirchen,var_DailyMinDischargePlatting ]';

Max_DailyMeanDischarge=[max_DailyMeanDischargeHofkirchen,max_DailyMeanDischargePlatting ]';
Max_DailyMaxDischarge=[max_DailyMaxDischargeHofkirchen,max_DailyMaxDischargePlatting ]';
Max_DailyMinDischarge=[max_DailyMinDischargeHofkirchen,max_DailyMinDischargePlatting ]';

SD_DailyMeanDischarge=[sd_DailyMeanDischargeHofkirchen,sd_DailyMeanDischargePlatting ]';
SD_DailyMaxDischarge=[sd_DailyMaxDischargeHofkirchen,sd_DailyMaxDischargePlatting ]';
SD_DailyMinDischarge=[sd_DailyMinDischargeHofkirchen,sd_DailyMinDischargePlatting ]';

Min_DailyMeanDischarge=[min_DailyMeanDischargeHofkirchen,min_DailyMeanDischargePlatting ]';
Min_DailyMaxDischarge=[min_DailyMaxDischargeHofkirchen,min_DailyMaxDischargePlatting ]';
Min_DailyMinDischarge=[min_DailyMinDischargeHofkirchen,min_DailyMinDischargePlatting ]';

Range_DailyMeanDischarge=[range_DailyMeanDischargeHofkirchen,range_DailyMeanDischargePlatting ]';
Range_DailyMaxDischarge=[range_DailyMaxDischargeHofkirchen,range_DailyMaxDischargePlatting ]';
Range_DailyMinDischarge=[range_DailyMinDischargeHofkirchen,range_DailyMinDischargePlatting ]';

Dispersion=table(Var_DailyMeanDischarge,Var_DailyMaxDischarge,Var_DailyMinDischarge,SD_DailyMeanDischarge,SD_DailyMaxDischarge,SD_DailyMinDischarge,Max_DailyMeanDischarge,Max_DailyMaxDischarge,Max_DailyMinDischarge,Min_DailyMeanDischarge,Min_DailyMaxDischarge,Min_DailyMinDischarge,Range_DailyMeanDischarge,Range_DailyMaxDischarge,Range_DailyMinDischarge,'RowNames',Rivers)

Quantile1_DailyMeanDischarge=[Quantile_DailyMeanDischargeHofkirchen(1),Quantile_DailyMeanDischargePlatting(1)]';
Quantile1_DailyMaxDischarge=[Quantile_DailyMaxDischargeHofkirchen(1),Quantile_DailyMaxDischargePlatting(1)]';
Quantile1_DailyMinDischarge=[Quantile_DailyMinDischargeHofkirchen(1),Quantile_DailyMinDischargePlatting(1)]';

Quantile2_DailyMeanDischarge=[Quantile_DailyMeanDischargeHofkirchen(2),Quantile_DailyMeanDischargePlatting(2)]';
Quantile2_DailyMaxDischarge=[Quantile_DailyMaxDischargeHofkirchen(2),Quantile_DailyMaxDischargePlatting(2)]';
Quantile2_DailyMinDischarge=[Quantile_DailyMinDischargeHofkirchen(2),Quantile_DailyMinDischargePlatting(2)]';

Quantile3_DailyMeanDischarge=[Quantile_DailyMeanDischargeHofkirchen(3),Quantile_DailyMeanDischargePlatting(3)]';
Quantile3_DailyMaxDischarge=[Quantile_DailyMaxDischargeHofkirchen(3),Quantile_DailyMaxDischargePlatting(3)]';
Quantile3_DailyMinDischarge=[Quantile_DailyMinDischargeHofkirchen(3),Quantile_DailyMinDischargePlatting(3)]';

Outlier_DailyMeanDischarge=[lowOutliers_DailyMeanDischargeHofkirchen+highOutliers_DailyMeanDischargeHofkirchen,lowOutliers_DailyMeanDischargePlatting+highOutliers_DailyMeanDischargePlatting]';
Outlier_DailyMaxDischarge=[lowOutliers_DailyMaxDischargeHofkirchen+highOutliers_DailyMaxDischargeHofkirchen,lowOutliers_DailyMaxDischargePlatting+highOutliers_DailyMaxDischargePlatting]';
Outlier_DailyMinDischarge=[lowOutliers_DailyMinDischargeHofkirchen+highOutliers_DailyMinDischargeHofkirchen,lowOutliers_DailyMinDischargePlatting+highOutliers_DailyMinDischargePlatting]';

Quantile=table(Quantile1_DailyMeanDischarge,Quantile1_DailyMaxDischarge,Quantile1_DailyMinDischarge,Quantile2_DailyMeanDischarge,Quantile2_DailyMaxDischarge,Quantile2_DailyMinDischarge,Quantile3_DailyMeanDischarge,Quantile3_DailyMaxDischarge,Quantile3_DailyMinDischarge,Outlier_DailyMeanDischarge,Outlier_DailyMaxDischarge,Outlier_DailyMinDischarge,'RowNames',Rivers)

%% Clear Useless Variables

clearvars -except DataStatusHofkirchen DataStatusPlatting Date MaxHofkirchen MaxPlatting MeanHofkirchen MeanPlatting MinHofkirchen MinPlatting