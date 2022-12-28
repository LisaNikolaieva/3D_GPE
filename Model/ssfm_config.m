
%% Real time run parameters
dt_ph = 0.0000025;            % s
tau_ph=100;                   % s

dt = dt_ph/t_mult;           % dimensionless
tau=tau_ph/t_mult;           % dimensionless

n_count_integrals = 400;
nn = (t_fin_ph - t_init_ph)/dt_ph;      % number of iteration

dt_rt = dt*(1-1i*gamma)/1i;
eD=expD(dt_rt,kk);
eD_hp=expD(0.5*dt_rt,kk);

% eD_itp=expD(-dt,kk);

fftw('planner','patient');


t_ph=t_init_ph;
t=t_ph/t_mult;

integral_counter = 0;
q=0;
