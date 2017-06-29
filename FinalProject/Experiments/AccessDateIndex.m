clear
clc
DateStrings = {'2018-05-26';'2014-08-03';'2014-09-03';'2017-08-03';'2012-08-03';'2010-08-03';'2099-08-03'};
Date = datetime(DateStrings,'InputFormat','yyyy-MM-dd')
Gifts = [1,20,3,40,60,7];
StartDate = datetime(2014,1,1);
EndDate = datetime(2014,12,31);
AnnualPeriodStart = (Date>=StartDate)
AnnualPeriodEnd = (Date<=EndDate)
Period = AnnualPeriodStart & AnnualPeriodEnd
AnnualPeriodBetween =(AnnualPeriodStart==AnnualPeriodEnd)
StartDatePeriod = Date(AnnualPeriodStart)
EndDatePeriod = Date(AnnualPeriodEnd)
WithinDatePeiod = Date(AnnualPeriodBetween)
GiftsWithinDatePeriod = Gifts(AnnualPeriodBetween)
table(AnnualPeriodStart,AnnualPeriodEnd)