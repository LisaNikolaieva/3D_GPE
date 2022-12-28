pc1=surf(rx*r_mult_microm, ry*r_mult_microm, abs(Psi_mult_cm3*Psi(:,:,Nz/2)).^2);
    pc1.EdgeColor='none';
    view(2);
    axis tight
    daspect ([1 1 1])
    box on
    cb1=colorbar;
    cb1.Location='eastoutside';
    cb1.Label.String='$\rho$, $1/$cm$^3$';
    cb1.Label.Interpreter='latex';
    cb1.Label.FontSize=16;
    cb1.Label.Position=[1 -3.1 0];
    cb1.Label.Rotation=0;
    cb1.TickLabelInterpreter='latex';
    cb1.FontSize=16;
    cm1=colormap(ax1,parula);
    caxis([0 pd]);
%     xlabel('x, $\mu$m', 'interpreter','latex','FontSize', 45);
    ylabel('y, $\mu$m','FontSize', 30, 'interpreter','latex');
    
