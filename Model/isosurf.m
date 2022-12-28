function [] = isosurf(rx,ry,rz,Psi)

r_grid_reconstruct;

den0=0;%0.002;
r0=1000;%3;
isov=0.09;



h1=figure;

draw_isosurf(X,Y,Z,Psi,isov);
for iz=1:Nz
    draw_core_xy(rx,ry,rz,Psi,iz,den0,r0);
end

for ix=1:Nx
    draw_core_zy(rx,ry,rz,Psi,ix,den0,r0);
end

for iy=1:Ny
    draw_core_zx(rx,ry,rz,Psi,iy,den0,r0);
end



end