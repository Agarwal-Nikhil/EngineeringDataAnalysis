% plot categorical data
figure
n = [3 14 7 4];
bar(n);

% plot continuous data
figure
load Timber.dat
s = Timber(:,3);
plot(s,'o');

% plot histogram of data
figure
hist(s,10);


% plot cumulative frequency diagram
figure
cdfplot(s);


% plot quantile plot
figure
Ys = ([1:length(s)]-0.5)./length(s);
s1 = sort(s);
plot(s1,Ys);


% plot box plot
figure
boxplot(s);

% Plot data together
figure
E = Timber(:,5);
scatter(E,s,'o');

% Covariance
covarm = cov(E,s);

% Correlation coefficient
corrm = corrcoef(E,s);



