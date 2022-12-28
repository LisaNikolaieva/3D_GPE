[X,Y,Z] = meshgrid(rx,ry,rz);

dx = rx(2)-rx(1);
dy = ry(2)-ry(1);
dz = rz(2)-rz(1);
dV = dx * dy * dz;

Nx = max(size(rx));
Ny = max(size(ry));
Nz = max(size(rz));

Lx = rx(end)-rx(1);
Ly = ry(end)-ry(1);
Lz = rz(end)-rz(1);


