clc;
clear all;
load Timber.dat;

% Create structure array: field 1 for strength data
Timber_data(1).name = 'strength';
Timber_data(1).values = Timber(:,3);
Timber_data(1).mean = mean(Timber(:,3));
Timber_data(1).std = std(Timber(:,3));

% Create structure array: field 2 for stiffness data
% by using the function struct:
Timber_data(2) = struct('name','stiffness','values',Timber(:,2),'mean', ...
    mean(Timber(:,2)),'std',std(Timber(:,2)));

