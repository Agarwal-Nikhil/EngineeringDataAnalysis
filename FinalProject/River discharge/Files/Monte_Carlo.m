%% MonteCarlo Sims 

%% Determining unknown beta and Cr
%'a'is a constant which represents the gauge reading corresponding to zero discharge
a=0.59; % from Ablusstafel

%values taken from the Ablusstafel
q1=0.972;
h1=0;

q1=1710;
h1=5.00;

% determine the the unknown
beta=2;%Average of all stages
Cr=exp(log(q1)-beta*log(h1+a));
%%
%the identified distrubution is Log-logistic Distrubution with
mu= 6.17822 ;  
sigma = 0.167287;
%% Monte Carlo Simulation

n_sam=1000;
h=MonteCarloSim(mu,sigma,n_sam,Cr,a,beta );

%% critical value
h_cr=4.7;

%% Compute the indicator samples:
%  Find cases, where the height is larger than the critical value
Iu = h >= h_cr;
if any(Iu)
    Pf_i = sum(Iu)/n_sam ;    % Probability of failure
else
    Pf_i=0;
end

%% Calculate Sample Size to keep CoV within 10%

%Target sample size 
delta_t = 0.1;              
% new number of samples
if Pf_i>0
    nsam = 1/delta_t^2/Pf_i;
else
    nsam=1000;
end
nsam=round(nsam)+1;
%% generating nsam seeds for Q  from the distrubution

h=MonteCarloSim( mu,sigma,1000,Cr,a,beta );

Iu = h > h_cr;
if any(Iu)
    Pf = sum(Iu)/nsam;      % Probability of failure
else
    Pf=0;
end


final_h=mean(h);

%% Tabulate Monetcarlo
InitialSeedSize=n_sam;
InitialProbFailure=Pf_i;
NewSeedSize=nsam;
FinalProbFailure=Pf ;
MonteCarlo=table(InitialSeedSize , InitialProbFailure, NewSeedSize, FinalProbFailure )

%% Plots to check sensitivity

x=linspace(-2,2,100);
y=linspace(-0.5,0.5,100);

figure(9)
subplot(2,1,1)
plot(Cr+x,mean(MonteCarloSim( mu,sigma,nsam,Cr+x,a,beta )),'-.*r')
xlabel('values of Cr')
ylabel('MCS height(m)')


subplot(2,1,2)
plot(beta+y ,mean(MonteCarloSim(  mu,sigma,nsam,Cr,a,beta+y )),'-.*r')
xlabel('values of beta')
ylabel('MCS height(m)')

ha = axes('Position',[0 0 1 1],'Xlim',[0 1],'Ylim',[0 1],'Box','off','Visible','off','Units','normalized', 'clipping' , 'off');

text(0.5, 1,'\bf Plot of height v/s other parameters ','HorizontalAlignment' ,'center','VerticalAlignment', 'top')


%% Clear unnecesary variables
clearvars -except DataStatusHofkirchen DataStatusPlatting Date MaxHofkirchen MaxPlatting MeanHofkirchen MeanPlatting MinHofkirchen MinPlatting final_h
