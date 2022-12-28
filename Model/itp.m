function [muF, Psi] = itp(ProjectDir,niter)
cd(ProjectDir) 
Config;
initial_Psi;
h1 = figure;

    for i=1:niter
        NL = NonLinPart(V,g,Psi);
        Psi = run(eD_hp_itp,Psi,NL,dt_itp,0);
        exp_mu = sqrt(NN0/Norm(Psi,dV));
        Psi = Psi*exp_mu;

        I(i)=i;
        MU(i)=log(exp_mu)/(-dt_itp);
        trace_MU(i,I,MU, dt_itp, MU_DIF, h1);
        
    end

MU(end)    
muF=real(sum(sum(sum(((ifftn(0.5*kk.*fftn(Psi))+(NL).*Psi).*conj(Psi)))))/Norm(Psi,1))

DeltaPsi=ifftn(0.5*kk.*fftn(Psi))+(NL-muF).*Psi;

itp_picmaker;


isosurf(rx,ry,rz,Psi);
end