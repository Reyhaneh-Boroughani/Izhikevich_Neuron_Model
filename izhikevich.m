function [u,w] = izhikevich(a,b,c,d,I,dt,u0)
    N=ceil(100/dt);
    u=zeros(1,N);
    w=zeros(1,N);
    w0=b*u0;
    u(:,1)=u0;
    w(:,1)=w0;
    
    for i=1:N-1
		u(i+1)=u(i)+dt*(0.04*((u(i))^2)+5*u(i)+140-w(i)+I(i));
		w(i+1)=w(i)+dt*(a*(b*u(i)-w(i)));
        
		if(u(i)>= 30)
			u(i)=30;
			u(i+1)=c;
			w(i+1)=w(i)+d;
		end
	end
end
			
        




