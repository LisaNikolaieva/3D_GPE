function [] = trace_plot (x,y,xlbl, ylbl, h3)

    figure(h3);
    hold on
    ax = gca;
    ax.FontSize=20;
    ax.LabelFontSizeMultiplier = 2.5;
    ax.TickLabelInterpreter='latex'; 
    ax.XMinorTick = 'on';
    ax.YMinorTick = 'on';
    ax.Box='on';
    xlabel(xlbl,'FontSize',40,'Interpreter','latex');
    ylabel(ylbl,'FontSize',40,'Interpreter','latex');
    
    p=plot(x,y,'.-');
    p.Color='black';
    p.MarkerSize=10;



end