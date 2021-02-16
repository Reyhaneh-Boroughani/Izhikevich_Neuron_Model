%% (K) Resonator
a=0.1;  b=0.26; c=-60;  d=-1;
u0=-62;
dt=0.2; 
N=ceil(100/dt);
t=linspace(1,100,N);

I=current(3,dt,0.65);
I(1:200)=0;
I(50:60)=0.65;
I(70:80)=0.65;

[u,w]=izhikevich(a,b,c,d,I,dt,u0);

figure;
plot(t,u);
title('(K) Resonator - Membrane Potential Time Course');
xlabel('time (t)');
ylabel('membrane potential (u)'); 
% saveas(gcf,'K-Resonator_Membrane Potential.png')

figure;	
plot(u,w);
title('(K) Resonator - Phase Portrait');
xlabel('membrane potential (u)');
ylabel('recovery variable (w)');
% saveas(gcf,'K-Resonator_PhasePortrait.png')