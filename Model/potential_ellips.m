function [ V ] = potential_ellips(X,Y,Z,a,e,kappa)



% a=20;
% e= 0.75;
b=sqrt(1-e^2)*a;

R = sqrt(X.^2+Y.^2);
Rho = a*b./sqrt(b^2*(X./R).^2+a^2*(Y./R).^2);

X0=(X./R).*Rho;
Y0=(Y./R).*Rho;



nx=1./sqrt(1+((a^2*Y0)./(b^2*X0)).^2);
ny=((a^2*Y0)./(b^2*X0))./sqrt(1+((a^2*Y0)./(b^2*X0)).^2);


V=0.5*(((X-X0).*nx+(Y-Y0).*ny).^2+kappa*Z.^2);




end