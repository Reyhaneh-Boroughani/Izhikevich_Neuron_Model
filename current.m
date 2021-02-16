function [I] = current(flag,dt,amplitude) %%externally applied input
    N=ceil(100/dt);
	t=linspace(1,100,N);
    I=zeros(1,N);
    T1=N/10;

    if flag==1 %%constant  
        I(T1:end)=amplitude;

    elseif flag==2 %%ramp
        for i=1:N
            I(i+1)=I(i)+1;
        end
end

