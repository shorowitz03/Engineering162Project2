function dydt = ode_func(t,y)

y1 = y(1);
y2 = y(2);
f_charge_particles = (((power(charge(1i), 2) * c_t) / (2 * k_0)) * ((2 * y1) - h));
f_d = (0.5 * p_air * c_d * (pi / 4) * power(diameter(1i), 2) * power(y(2), 2));
dy1dt = y2;
dy2dt = (f_g + f_d - f_sheet + f_charge_particles) / divisor;
dydt = [dy1dt;dy2dt];
end
