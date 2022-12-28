function [V] = potential(name,X,Y,Z,kappa,varargin)

switch name
    case 'harmonic'
        V = 0.5*(X.^2+Y.^2+kappa^2*Z.^2);
        
        
    case 'elliptic'   
        a=varargin{1}
        e=varargin{2}
        b=sqrt(1-e^2)*a;

        R = sqrt(X.^2+Y.^2);
        Rho = a*b./sqrt(b^2*(X./R).^2+a^2*(Y./R).^2);

        X0=(X./R).*Rho;
        Y0=(Y./R).*Rho;


        nx=1./sqrt(1+((a^2*Y0)./(b^2*X0)).^2);
        ny=((a^2*Y0)./(b^2*X0))./sqrt(1+((a^2*Y0)./(b^2*X0)).^2);


        V=0.5*(((X-X0).*nx+(Y-Y0).*ny).^2+kappa*Z.^2);



        

end