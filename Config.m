%% Config parameters

ProjectDir = pwd;

L = 250;    Lx=L; Ly=L/4; Lz=L/32;
N = 512;    Nx=N; Ny=N/4; Nz=N/32;


e=0.999;

s0 = 3;
gamma = 0.03;
NN0 = 1e4;
a_ph=100*1e-6;
l_r=0.2*5*1e-6;                     % m
l_z=l_r;


t_init_ph = 0;      % s
t_fin_ph = 1;       % s

NonLinPart = @(V,g,Psi) V+g*(abs(Psi)).^2;


if ~exist([ProjectDir,'/DATA/Pictures/'], 'dir')
    mkdir([ProjectDir,'/DATA/Pictures/'])
end


%% Default parameters
ModelDir = 'C:\BM\GPE\3D\Model';
cd(ModelDir) 

Physical_parameters;
grid3D;


omega_r = hbar/(mass*l_r^2);      % Hz
omega_z = hbar/(mass*l_z^2);      % Hz
kappa=omega_z/omega_r;

dim3D;

itp_config;
ssfm_config;

integrals;


% a=l_r/r_mult_microm;

a=a_ph/r_mult;
V = potential('elliptic',X,Y,Z,kappa,a,e);


