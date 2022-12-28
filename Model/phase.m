hold on
su2=surf(rx*r_mult_microm, ry*r_mult_microm, angle(Psi(:,:,Nz/2)));
    su2.EdgeColor='none';
    view(2);
    axis tight
    daspect ([1 1 1])
    box on
    cb2=colorbar;
    cb2.Location='eastoutside';
    cb2.Label.String='arg$\Psi$';
    cb2.Label.Interpreter='latex';
    cb2.Label.FontSize=16;
    cb2.Label.Position=[1 -3.1 0];
    cb2.Label.Rotation=0;
    cb2.TickLabelInterpreter='latex';
    cb2.FontSize=16;
    cm2=colormap(ax2,hsv);
    xlabel('x, $\mu$m', 'interpreter','latex','FontSize', 30);
    ylabel('y, $\mu$m','FontSize', 30, 'interpreter','latex');
    
    draw_core(rx,ry,rz,Psi,'xy')