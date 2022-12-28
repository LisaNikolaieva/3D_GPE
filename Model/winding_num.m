function [ n, delta] = winding_num( X,Y,Psi, xs,ys,R )

N=100;
phi=linspace(0,2*pi,N);

x=xs+R*cos(phi);
y=ys+R*sin(phi);

Phi=unwrap(angle(interp2(X,Y,Psi,x,y)));

n=(Phi(N)-Phi(1))/2/pi;
delta=abs(Phi(N/4)-Phi(3*N/4));

end