%% (N) Rebound Burst
a=0.03; b=0.25; c=-52;  d=0;
u0=-64; 
dt=0.2; 
N=ceil(100/dt);
t=linspace(1,100,N);
I=current(1,dt,-15);
I(1:20)=0;
I(80:end)=0;

[u,w]=izhikevich(a,b,c,d,I,dt,u0);


figure;
plot(t,u);
title('(N) Rebound Burst - Membrane Potential Time Course');
xlabel('time (t)');
ylabel('membrane potential (u)'); 
% saveas(gcf,'N-Rebound Burst_Membrane Potential.png')

figure;	
plot(u,w);
title('(N) Rebound Burst - Phase Portrait');
xlabel('membrane potential (u)');
ylabel('recovery variable (w)');
% saveas(gcf,'N-Rebound Burst_PhasePortrait.png')