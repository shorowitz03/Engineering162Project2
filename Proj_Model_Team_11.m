% Project 2: A MATLAB Activity.
% File: Proj_Model_Team_11.m
% Description:
% Date: 3 April 2022
% By: Drew Fulkerson
% afulkers
% Sam Horowitz
% sphorowi
% Adam Kahl
% akahl
% Peter Welz
% pwelz
% Section: 1
% Team: 11
% 
% ELECTRONIC SIGNATURE
% Drew Fulkerson
% Sam Horowitz
% Adam Kahl
% Peter Welz
% 
% The electronic signatures above indicate that the program
% submitted for evaluation is the combined effort of all
% team members and that each member of the team was an
% equal participant in its creation. In addition, each
% member of the team has a general understanding of
% all aspects of the program development and execution.
% 
% This is a simulation that determines how one particle behaves in the 
% air purifier


%% Declaration of Constants

g = 9.8; %Gravity
p_air = 1.23; % Density of air (kg/m^3)
u_air = 1.8205; % Dynamic Viscosity of air
c_electron = 1.602176634e-19; % Charge of one electron (C)
k_0 = 8.85e-12; % Permativity of free space 
k = 1/(4 * pi * k_0); % Coulombs Constant (Nm^2C^2)
charge_density = 1e-19; % Charge Density
h = 10; % Max height of charged particle effect



% Data for types of particles (Iteration Variable)
% 1: NO2 (Nitrogen Dioxide)
% 2: SO2 (Sulfur Dioxide)
% 3: NO (Nitric Oxide)
% 4: CO (Carbon Monoxide)
% 5: C6H6 (Benzene)
% 6: PM-2.5 (Soot)
% 7: PM-10 (Soot)

i = 6; % Iteration Variable

t_span = [0.0 5.0]; % Time Span
timestep = .2; % Time step for eulers method
y0 = [0;3.0]; %Initial Condition for Diff Eq.

%% Particle Measurments

diameter = [3.94e-10, 4.4e-10, 2.62e-10, 2.7e-10, 6.76e-10, 2.5e-6, 1e-7]; % Particle Diameter
p_particle = [3.663, 2.629, 1.3402, 1.14, 3.486, 1780, 1780]; % Particle Density
charge = [c_electron, 0, -2 * c_electron, 0, 0, c_electron, -c_electron]; % Particle Charge
mass = (pi/6) * p_particle(i) * power(diameter(i), 3); % Particle Mass
Re = (p_air * diameter(i)) / u_air; % Reynolds Number
c_d = 24 / Re; % Stokes constant

%% Force Equations

f_g = (pi/6) * (p_air - p_particle(i)) * g * power(diameter(i), 3); % Force of Gravity
f_charge_particles = ((power(charge(i), 2)) / (2 * k_0)); % Force of charged Particles
f_d = 0.5 * p_air * c_d * (pi / 4) * power(diameter(i), 2); % Force of Drag
f_sheet = charge(i) * charge_density * 2 * k; % Force of Sheet


%% Differential Equations and Plotting

[t,y] = ode45(@(t,y) ode_func(t, y, timestep, -f_sheet, 0, 0, -f_g, mass, h), t_span, y0);

plot(t,y)
legend('Positions','Velocities')
xlabel('Time')
ylabel('Centimeters')
