%% (T) Inhibition Induced Bursting
a=-0.026;  b=-1; c=-45;  d=2;
u0=-63.8; 
dt=0.1; 
N=ceil(100/dt);
t=linspace(1,100,N);
I=(-80)*ones(1,N);
I(50:850)=60;

[u,w]=izhikevich(a,b,c,d,I,dt,u0);


figure;
plot(t,u);
title('(T) Inhibition Induced Bursting - Membrane Potential Time Course');
xlabel('time (t)');
ylabel('membrane potential (u)'); 
% saveas(gcf,'T-Inhibition Induced Bursting_Membrane Potential.png')

figure;	
plot(u,w);
title('(T) Inhibition Induced Bursting - Phase Portrait');
xlabel('membrane potential (u)');
ylabel('recovery Variable (w)');
% saveas(gcf,'T-Inhibition Induced Bursting_PhasePortrait.png')