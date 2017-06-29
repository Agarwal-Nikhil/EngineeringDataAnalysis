function qtlplot( data )
% Plots the quantile plot of a data set
figure(1)
% quantile steps:
y = ([1:length(data)]-0.5)./length(data); 
 % sorted data:
x = sort(data);                           
% plot and labels:
plot(x,y);
xlabel('x')
ylabel('Q(x)')

end

