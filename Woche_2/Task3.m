load 'EuropeanWindStorms.dat'
load 'PointCoordinates.dat'

Denmark_Xcoord= PointCoordinates(1,2);
Denmark_Ycoord= PointCoordinates(1,3);

Sweden_Xcoord= PointCoordinates(2,2);
Sweden_Ycoord= PointCoordinates(2,3);

Norway_Xcoord= PointCoordinates(3,2);
Norway_Ycoord= PointCoordinates(3,3);

Dist_DK_NOR= sqrt((Denmark_Xcoord-Norway_Xcoord)^2 +(Denmark_Ycoord-Norway_Ycoord)^2);
Dist_DK_SWD= sqrt((Denmark_Xcoord-Sweden_Xcoord)^2 +(Denmark_Ycoord-Sweden_Ycoord)^2);
Dist_SWD_NOR= sqrt((Sweden_Xcoord-Norway_Xcoord)^2 +(Sweden_Ycoord-Norway_Ycoord)^2);

ws_denmark= EuropeanWindStorms(:,2)
ws_norway=EuropeanWindStorms(:,4)
ws_sweden=EuropeanWindStorms(:,3)

storm=1:52
figure(1)
plot(storm,[ws_denmark, ws_norway, ws_sweden]')
title('Wind Speed Vs Storm')
xlabel('Storm Event')
ylabel('Wind speed(m/s)')
legend('Denmark','Norway','Sweden')

figure(2)
subplot(1,3,1)
scatter(ws_sweden,ws_norway)
xlabel('Wind speed Sweden')
ylabel('Wind speed Norway')

subplot(1,3,2)
scatter(ws_sweden,ws_denmark)
xlabel('Wind speed Sweden')
ylabel('Wind speed Denmark')

subplot(1,3,3)
scatter(ws_denmark,ws_norway)
xlabel('Wind speed Denmark')
ylabel('Wind speed Norway')

figure(4)
subplot(1,2,1)
hist(ws_denmark,10)
title('Denmark')
subplot(1,2,2)
hist(ws_norway,10)
title('Norway')

figure(5)
subplot(1,2,1)
cdfplot(ws_denmark)
title('Denmark')
subplot(1,2,2)
cdfplot(ws_norway)
title('Norway')

figure(6)
boxplot(ws_norway,'colors', 'r')
hold on
boxplot(ws_denmark,'colors', 'b')