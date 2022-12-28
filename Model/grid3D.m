global DO_PARALLEL;
DO_PARALLEL = 1;




%% XYZ
if DO_PARALLEL
    rx = gpuArray(linspace(-Lx/2,Lx/2,Nx));
    ry = gpuArray(linspace(-Ly/2,Ly/2,Ny));
    rz = gpuArray(linspace(-Lz/2,Lz/2,Nz));
else
    rx = linspace(-Lx/2,Lx/2,Nx);
    ry = linspace(-Ly/2,Ly/2,Ny);
    rz = linspace(-Lz/2,Lz/2,Nz);
end
    

hx = rx(2)-rx(1);
hy = ry(2)-ry(1);
hz = rz(2)-rz(1);
dV = hx * hy * hz;

[X,Y,Z] = meshgrid(rx,ry,rz);

%% KKK
if DO_PARALLEL
    kx = gpuArray([ (0:Nx/2-1)*2*pi/Lx -(Nx/2:-1:1)*2*pi/Lx]);
    ky = gpuArray([ (0:Ny/2-1)*2*pi/Ly -(Ny/2:-1:1)*2*pi/Ly]);
    kz = gpuArray([ (0:Nz/2-1)*2*pi/Lz -(Nz/2:-1:1)*2*pi/Lz]);  
else
    kx = [ (0:Nx/2-1)*2*pi/Lx -(Nx/2:-1:1)*2*pi/Lx];
    ky = [ (0:Ny/2-1)*2*pi/Ly -(Ny/2:-1:1)*2*pi/Ly];
    kz = [ (0:Nz/2-1)*2*pi/Lz -(Nz/2:-1:1)*2*pi/Lz];
end


[KX,KY,KZ] = meshgrid(kx,ky,kz);
if DO_PARALLEL
    kk = gpuArray((KX.^2+KY.^2+KZ.^2));
else
    kk = ((KX.^2+KY.^2+KZ.^2));
end

