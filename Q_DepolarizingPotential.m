%% (Q) Depolarizing after potential
a=1;  b=0.2; c=-60;  d=-21;
u0=-70; 
dt=0.2; 
N=ceil(100/dt);
t=linspace(1,100,N);
I=current(0,dt,1); %%flag==0, zero current
I(8:18)=20;

[u,w]=izhikevich(a,b,c,d,I,dt,u0);


figure;
plot(t,u);
title('(Q) Depolarizing after Potential - Membrane Potential Time Course');
xlabel('time (t)');
ylabel('membrane potential (u)'); 
% saveas(gcf,'Q-Depolarizing after Potential_Membrane Potential.png')

figure;	
plot(u,w);
title('(Q) Depolarizing after Potential - Phase Portrait');
xlabel('membrane potential (u)');
ylabel('recovery Variable (w)');
% saveas(gcf,'Q-Depolarizing after Potential_PhasePortrait.png')