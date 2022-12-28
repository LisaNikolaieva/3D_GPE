%% TF
mu_TF=1.5;
rho_TF=(mu_TF-V)/g.*(mu_TF>=V);

%% Phase inprinting
Psi=sqrt(rho_TF).*exp(1i*s0*atan2(Y,X));
Psi = Psi.*sqrt(NN0/((sum(sum(sum(abs(Psi).^2))))*dV));  
