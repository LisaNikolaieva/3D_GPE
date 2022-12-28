function trace_MU(i,I,MU, dt_itp, MU_DIF, h1)

    bp = 0;

    
    if i > 1
        dMU = abs(MU(i) - MU(i-1))/dt_itp;
        if dMU < MU_DIF
            bp = 1;
        end
    end
    
    figure(h1);
    h1.Color='k';
    set(gca,'Color','k');
    set(gca,'xcolor','[0.55 0.55 0.55]') 
    set(gca,'ycolor','[0.55 0.55 0.55]') 
    set(gcf, 'InvertHardCopy', 'off');
    ax = gca;
    ax.FontSize=20;
    ax.LabelFontSizeMultiplier = 2.5;
    ax.TickLabelInterpreter='latex'; 
    ax.XMinorTick = 'on';
    ax.YMinorTick = 'on';
    ax.Box='on';
    xlabel('i','FontSize',40,'Interpreter','latex');
    ylabel('$\mu$','FontSize',40,'Interpreter','latex');
    hold on
    p=plot(I,MU,'c.-');
    p.MarkerSize=15;



end