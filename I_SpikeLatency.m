%% (I) Spike Latency
a=0.02; 
b=0.2;  
c=-65;  
d=6;
u0=-70; 
dt=0.5; 
N=ceil(100/dt);
t=linspace(1,100,N);
I=zeros(1,N);  %pulse
I(50:55)=7;

[u,w]=izhikevich(a,b,c,d,I,dt,u0);


figure;
plot(t,u);
title('(I) Spike Latency - Membrane Potential Time Course');
xlabel('time (t)');
ylabel('membrane potential (u)'); 
% saveas(gcf,'I-Spike Latency_Membrane Potential.png')

figure;	
plot(u,w);
title('(I) Spike Latency - Phase Portrait');
xlabel('membrane potential (u)');
ylabel('recovery variable (w)');
% saveas(gcf,'I-Spike Latency_PhasePortrait.png')