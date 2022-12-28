f1=figure('visible', 'on',  'Position', [50 -50 2000 1000]);
figure(f1);

for i =[1,3] 
    subplot(2,2,i)
    ax = gca;
    ax.FontSize=16;
    ax.LabelFontSizeMultiplier = 1.5;
    ax.TickLabelInterpreter='latex'; 
    ax.TickLabelInterpreter='latex'; 
    ax.XMinorTick = 'on';
    ax.YMinorTick = 'on';
    ax.Box='on';
    hold on
    
    switch i
        case 1
            ss=surf(r_mult_microm*rx,r_mult_microm*ry,abs(Psi_mult_cm3*Psi(:,:,Nz/2)).^2);
            view(2);
%               density;
        case 3
            ss=surf(r_mult_microm*rx,r_mult_microm*ry,angle(Psi(:,:,Nz/2))); 
            view(2);
%               phase;
    end
    ss.EdgeColor='none';
    cb=colorbar;
    cb.TickLabelInterpreter='latex';
    daspect([1 1 1])
    xlim([-Lx/2*r_mult_microm,Lx/2*r_mult_microm]);
    ylim([-Ly/2*r_mult_microm,Ly/2*r_mult_microm]);
    xlabel('x, $\mu m$','FontSize',16,'Interpreter','latex');
    ylabel('y, $\mu m$','FontSize',16,'Interpreter','latex');

end


% f2=figure('visible', 'on',  'Position', [50 -50 2000 1000]);
% figure(f2);
for i =[2,4] 
    subplot(2,2,i)
    ax = gca;
    ax.FontSize=16;
    ax.LabelFontSizeMultiplier = 1.5;
    ax.TickLabelInterpreter='latex'; 
    ax.TickLabelInterpreter='latex'; 
    ax.XMinorTick = 'on';
    ax.YMinorTick = 'on';
    ax.Box='on';
    hold on
    
    switch i
        case 2
            hold on
            p51=plot(r_mult_microm*rx,abs(Psi_mult_cm3*Psi(Ny/2,:,Nz/2)).^2,'.-');
            p51.LineWidth=2;
            p51.MarkerSize=20;
            p51.Color='black';
            p52=plot(r_mult_microm*rx,abs(Psi_mult_cm3*DeltaPsi(Ny/2,:,Nz/2)),':');
            p52.LineWidth=2;
            p52.Color='magenta';
            p43=plot(r_mult_microm*rx,V(Ny/2,:,Nz/2)/max(max(max(abs(V(Ny/2,:,Nz/2)))))*max(max(max(abs(Psi_mult_cm3*Psi(Ny/2,:,Nz/2)).^2))),'-');
            p43.LineWidth=2;
            p43.Color='blue';
            xlim([-Lx/2*r_mult_microm,Lx/2*r_mult_microm]);
            xlabel('$x, \mu$m','FontSize',16,'Interpreter','latex');
            ylabel('1/cm$^{3}$','FontSize',16,'Interpreter','latex');
            legend('$|\Psi|^2_{y,z=0}$', '$|\Delta \Psi|_{y,z=0}$','$V_{y,z=0}$','FontSize',10,'Interpreter','latex');

        case 4
             p=plot(I,MU,'.-');
             p.MarkerSize=15;
             p.Color='magenta';
             xlabel('i','FontSize',16,'Interpreter','latex');
             ylabel('$\mu$','FontSize',16,'Interpreter','latex');
    end


end



