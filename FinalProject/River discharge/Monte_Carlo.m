%% MonteCarlo Sims 

%% Determining unknown beta and Cr
%'a'is a constant which represents the gauge reading corresponding to zero discharge
a=0.590; % from Ablusstafel

%values taken from the Ablusstafel
q1=110;
h1=1.5;

q2=252;
h2=2.3;

% determine the the unknown
beta=(log(q1)-log(q2))/(log(h1+a)-log(h2+a));
Cr=exp(log(q1)-beta*log(h1+a));

%% Monte Carlo Simulation
nsam=1000;
h=MonteCarloSim(mean(MeanPlatting),29, nsam,Cr,a,beta );

%% critical value
h_cr=4.7;

%% Compute the indicator samples:
%  Find cases, where the height is larger than the critical value
Iu = h > h_cr;
if any(1)%Iu)
    Pf = 0.8%sum(Iu)/nsam      % Probability of failure
end

%% Calculate Sample Size to keep CoV within 10%

%Target sample size 
delta_t = 0.1;              
% new number of samples
nsam = 1/delta_t^2/Pf;
nsam=round(nsam);
%% generating nsam seeds for Q  from the distrubution

h=MonteCarloSim( mean(MeanHofkirchen),69,nsam,Cr,a,beta );

Iu = h > h_cr;
if any(Iu)
    Pf = sum(Iu)/nsam;      % Probability of failure
end

final_h=mean(h);
%% Plots to check sensitivity

x=linspace(-2,2,100);
y=linspace(-0.5,0.5,100);
figure(10)
subplot(2,1,1)
plot(Cr+x,mean(MonteCarloSim( mean(MeanHofkirchen),69,nsam,Cr+x,a,beta )),'-.*r')
xlabel('values of Cr')
ylabel('MCS height(m)')


subplot(2,1,2)
plot(beta+y ,mean(MonteCarloSim( mean(MeanHofkirchen),69,nsam,Cr,a,beta+y )),'-.*r')
xlabel('values of beta')
ylabel('MCS height(m)')

ha = axes('Position',[0 0 1 1],'Xlim',[0 1],'Ylim',[0 1],'Box','off','Visible','off','Units','normalized', 'clipping' , 'off');

text(0.5, 1,'\bf Plot of height v/s other parameters ','HorizontalAlignment' ,'center','VerticalAlignment', 'top')


%% Clear unnecesary variables
clearvars -except DataStatusHofkirchen DataStatusPlatting Date MaxHofkirchen MaxPlatting MeanHofkirchen MeanPlatting MinHofkirchen MinPlatting final_h
