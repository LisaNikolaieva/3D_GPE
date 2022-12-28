pd = gather(max(max(max(abs(Psi_mult_cm3*Psi).^2))));

h3=figure;

for num = 1:nn



    NL = NonLinPart(V,g,Psi);
    Psi = run(eD_hp,Psi,NL,dt_rt,mu);
    if gamma>0
       mu=sum(sum(sum((ifftn(0.5*kk.*fftn(Psi))+(V+g*(abs(Psi).^2)).*Psi).*conj(Psi))))/sum(sum(sum(abs(Psi).^2)))-1/tau;
    end

    if integral_counter == n_count_integrals
%         calc_integrals;
        integral_counter = 0;  
    end

    

    if integral_counter == 0
        display(t_ph,'t_ph');
        q=q+1;
        T(q)=t_ph;
        MU(q)=mu;
        NORM(q)=Norm(Psi,dV);
%         trace_plot(T,MU,'$t$, s','$\mu$',h3);
        trace_plot(T,NORM,'$t$, s','$N$',h3);
        
        if (mod(q,10)==1)
            Psi_picmaker;
        end
    end
    
    
    integral_counter = integral_counter + 1;
    t = t + dt;
    t_ph=t*t_mult;
    
end



