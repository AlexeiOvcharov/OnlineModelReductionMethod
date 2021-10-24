%% MagLev parameters

g = 9.81;
m = 0.0844;

k = 1;
R = 2.52;
c = 0.005;

%% FLC controller coefficients

kk = 10;

k0 = kk^3;
k1 = 3*kk^2;
k2 = 3*kk;

%% Noise parameters

voltage_noise_abs = 0.1;
current_noise_abs = 0.005;

%% Initial conditions

lambda_0 = -0.02;

Y_0 = -1;
dY_0 = 0.5;

% Initial condition of the eta estimate
hat_eta_0 = 0.0001;

% Trajectory generator initial condition
Yd_0 = 0;
dYd_0 = 0;
ddYd_0 = 0;
dddYd_0 = 0;

%% Trajecotry Generator

tt1 = 1;
tt2 = 3;
tt3 = 5;
tt4 = 7;

%% Regression model Parametrization

mu = 10;
rho = 0.01; % It is used only in the Estimation ALCOS block

% Parameters
eta = lambda_0;

Omega = [
  eta;
  eta^2;
  eta^3;
  eta^4;
  eta^5;
  eta^6
];

%% Speed observer

gamma_s = 10;
chi_0 = 0;

%% Position observer

gamma_y = 10;

%% Setup refference signal type

% caseNumber = 1; % sin
caseNumber = 2; % filtered steps

nu = 0;
if caseNumber == 1
    nu = 10;
elseif caseNumber == 2
    nu = 1;
end

%% DREM filter parameters for SLICE method (Noise-Free)

s = [1; 2; 10; 20; 5; 7]; % DREM filters
kappa   = s;
v       = kappa;


%% Estimation method parameters (Noise-Free)

% Slice coefficients
epsilon = 1e-3;
gamma_SLICE = 100;

% ALCOS coefficients
alpha = 400;
gamma_ALCOS = 100;


%% DREM filter parameters for SLICE method (Noised)

s = [1; 2; 10; 20; 5; 7]; % DREM filters
kappa   = s;
v       = kappa;


%% Estimation method parameters (Noised)

epsilon = 1;
gamma_SLICE = 1;


alpha = 100;
gamma_ALCOS = 400;

