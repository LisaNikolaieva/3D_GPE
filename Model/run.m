function [Psi] = run(eD_hp,Psi,NL,dt,mu)

        
        Psi = ifftn(eD_hp.*fftn(Psi));
        Psi = exp((NL-mu)*dt).*Psi;
        Psi = ifftn(eD_hp.*fftn(Psi)); 


end