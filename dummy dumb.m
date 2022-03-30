



% VARIABLES
g = 9.8;
% Density of air (kg/m^3)
p_air = 1.23;
% Dynamic Viscosiry of air
u_air = 1.8205;
% Charge of one electron (C)
c_electron = 1.602176634e-19;

% Data for types of particles
% 1: NO2 (Nitrogen Dioxide)
% 2: SO2 (Sulfur Dioxide)
% 3: NO (Nitric Oxide)
% 4: CO (Carbon Monoxide)
% 5: C6H6 (Benzene)
% 6: PM-2.5 (Soot)
% 7: PM-10 (Soot)

% Density of particles (kg/m^3)
p_particle = [3.663, 2.629, 1.3402, 1.14, 3.486, 1780, 1780];

% Diamater of particle (m)
diameter = [3.94e-10, 4.4e-10, 2.62e-10, 2.7e-10, 6.76e-10, 2.5e-6, 1e-7];

% Charge of particle (C)
charge = [c_electron, 0, -2 * c_electron, 0, 0, c_electron, -c_electron];

% LOOP STARTS HERE FOR EACH PARTICLE TYPE
i = 1;

% Reynolds Number
Re = (p_air * diameter(i) * diff(y, t)) / u_air;
% Stokes constant
c_d = 24 / Re;
% 
v_vert = diff(y, t);



% Permativity of free space 
k_0 = 8.85e-12;

% Columb Constant (Nm^2C^2)
k = 1/(4 * pi * k_0);

% Concentration of particles
c_t  = exp(3.912 - (0.004 * t)) + 50;

% Charge density
charge_density = 10;

% Distance from the plate where the particle is not affected by the plate
h = 10;
% Mass * Acceleration
m_a = diff(y, t, 2);
divisor = (pi/6) * p_particle(i) * power(diameter(i), 3);

% Force of gravity
f_g = (pi/6) * (p_air - p_particle(i)) * g * power(diameter(i), 3);

% Force of drag


% Force of the sheet
f_sheet = charge(i) * charge_density * 2 * k;

% Force of charged particles
y0 = 0;
t_span = linspace(0,20,600);
[t,y] = ode45(@(t,y) ode_func(t, y), t_span, y0);

plot(t,y)


