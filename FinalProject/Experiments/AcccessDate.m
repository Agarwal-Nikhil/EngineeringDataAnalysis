clear
clc
start = datetime('now');
vec = start + hours(0:24).'; % datetime + duration = datetime
midnight = dateshift(start, 'end', 'day');
pastMidnight = vec > midnight; % relational operators work
T = table(vec, pastMidnight)