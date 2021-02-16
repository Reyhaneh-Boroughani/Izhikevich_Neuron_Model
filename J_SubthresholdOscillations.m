%% (J) Subthreshold oscillations
a=0.05; 
b=0.26; 
c=-60;  
d=0; 
u0=-62; 
dt=0.2; 
N=ceil(100/dt);
t=linspace(1,100,N);
I=zeros(1,N);  
I(50:55)=2; %pulse

[u,w]=izhikevich(a,b,c,d,I,dt,u0);


figure;
plot(t,u);
title('(J) Subthreshold Oscillations - Membrane Potential Time Course');
xlabel('time (t)');
ylabel('membrane potential (u)'); 
% saveas(gcf,'J-Subthreshold Oscillations_Membrane Potential.png')

figure;	
plot(u,w);
title('(J) Subthreshold Oscillations - Phase Portrait');
xlabel('membrane potential (u)');
ylabel('recovery variable (w)');
% saveas(gcf,'J-Subthreshold Oscillations_PhasePortrait.png')