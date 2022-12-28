function [] = draw_isosurf(X,Y,Z,Psi,isov)

ax = gca;
ax.FontSize=16;
ax.LabelFontSizeMultiplier = 1.5;
ax.TickLabelInterpreter='latex'; 

p = patch(isosurface(X,Y,Z,abs(Psi).^2,isov));
alpha(0.5);
p.FaceColor = [0 1 1];
p.EdgeColor = 'none';
daspect([1 1 1])

view(3); 
axis tight
camlight 
lighting gouraud

xlabel('x','FontSize',30,'Interpreter','latex');
ylabel('y','FontSize',30,'Interpreter','latex');
zlabel('z','FontSize',30,'Interpreter','latex');


end