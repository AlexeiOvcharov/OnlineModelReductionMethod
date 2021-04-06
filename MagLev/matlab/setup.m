%% MagLev parameters

g = 9.81;
m = 0.0844;

k = 1;
R = 2.52;
c = 0.005;

%% Initial conditions

lambda_0 = -0.02;

Y_0 = -1;
dY_0 = 0.5;

%% Generator

nu = 10; %% see after.m

tt1 = 1;
tt2 = 3;
tt3 = 5;
tt4 = 7;

Yd_0 = 0;
dYd_0 = 0;
ddYd_0 = 0;
dddYd_0 = 0;


%% Controller

kk = 10;
k0 = kk^3;
k1 = 3*kk^2;
k2 = 3*kk;

%% Parametrization

mu = 10;

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

%% Identification

gamma_SLICE = 100;

epsilon = 1e-3;

gamma_ALCOS = 1000;

eth10 = 0.0001;

s = [1; 2; 10; 20; 5; 7]; % DREM filters

%% Speed observer

gamma_s = 10;
chi_0 = 0;

%% Position observer

gamma_y = 10;

%% Sim setup


%% Setup refference signal type

% caseNumber = 1; % sin
caseNumber = 2; % filtered steps

nu = 0;
if caseNumber == 1
    nu = 10;
elseif caseNumber == 2
    nu = 1;
end