%% Norm
Norm = sum(sum(sum(abs(Psi).^2))) * dV;


% %% H
% [FX, FY]=gradient(Psi,hx,hy);
% Th=0.5*dV*sum(sum((abs(FX)).^2+(abs(FY)).^2));
% U=0.5*g*dV*sum(sum((abs(Psi)).^4));
% W=dV*sum(sum(V.*(abs(Psi).^2)));
% Hamiltonian=Th+U+W
% 
% 
% 
% %% winding number
% [n1, delta1]=winding_num(X(:,:,Nz/2),Y(:,:,Nz/2),Psi(:,:,Nz/2),0,0,R_i);
% [n2, delta2]=winding_num(X(:,:,Nz/2),Y(:,:,Nz/2),Psi(:,:,Nz/2),0,0,R_o);
% 
% wn=[n1 n2];
% disp([num2str(n1, '%.0f'),'  ',num2str(n2, '%.0f')])