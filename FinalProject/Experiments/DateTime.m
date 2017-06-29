clear;
clc;
t = datetime('now') + calyears(0:2) + calmonths(0:2) + hours(20:20:60);
if t.Year == 2017
    print t.Month
end