%%Q2
for Year = 1971:2016
    StartDate = datetime(Year,1,1);
    EndDate = datetime(Year,12,31);
    AnnualPeriodStart = (Date>=StartDate);
    AnnualPeriodEnd = (Date<=EndDate);
    AnnualPeriod = (AnnualPeriodStart & AnnualPeriodEnd);
    PlattingPeriod = MeanPlatting(AnnualPeriod);
    AnnualMeanPlatting(Year - 1970) = mean(PlattingPeriod);
    [AnnualMaxPlatting(Year - 1970), index(Year - 1970)] = max(PlattingPeriod);
    indexTemp = index(Year - 1970);
    indexTempNumber = datenum(StartDate) + indexTemp;
    indexTempDateStr = datestr(indexTempNumber);
    indexTempDateVec = datevec(indexTempDateStr);
    indexTempDateTime = datetime(indexTempDateVec);
    indexMonth(Year - 1970) = month(indexTempDateTime);
end
clear StartDate EndDate ...
    AnnualPeriodStart AnnualPeriodEnd ...
    AnnualPeriod HofKirchenPeriod ...
    indexTemp indexTempNumber indexTempDateStr ...
    indexTempDateVec indexTempDateTime index
figure(1);
h = histogram(indexMonth,12);
FrequencyMaximumPlatting = h.Values
disp('Max Height in Platting in the period 1971 to 2016 occured the most in the months of June to August');

%% Q3
%AnnualMeanHeight
DistributionFitting(AnnualMeanPlatting');

%AnnualMaxHeight
DistributionFitting(AnnualMaxPlatting');