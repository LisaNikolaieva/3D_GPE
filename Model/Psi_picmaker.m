
f10=figure('visible', 'on',  'Position', [50 -50 2000 1000]);

figure(f10);
ax = gca;
ax.FontSize=20;
ax.LabelFontSizeMultiplier = 1.5;
ax.TickLabelInterpreter='latex'; 
ax.XMinorTick = 'on';
ax.YMinorTick = 'on';

    
%% Density       
ax1=subplot(2,1,1);
    hold on
    ax = gca;
    ax.FontSize=16;
    ax.LabelFontSizeMultiplier = 1.5;
    ax.TickLabelInterpreter='latex'; 
    density;
%% Phase
ax2=subplot(2,1,2);
    hold on
    ax = gca;
    ax.FontSize=16;
    ax.LabelFontSizeMultiplier = 1.5;
    ax.TickLabelInterpreter='latex'; 
    phase;


%%
saveas(f10,[ProjectDir,'/DATA/Pictures/t=',num2str(t_ph),'.png']);
close(f10);
