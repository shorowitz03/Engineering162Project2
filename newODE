function dydt = ode_func(t,y, timestep, f_sheet, f_drag, f_charged, f_g, divisor, h)

y1 = y(1);
y2 = y(2);
dy1dt = y1 + y2 * (timestep);
dy2dt = y2 - ((f_sheet + (f_drag * power(y2, 2) / y2) + f_charged  * ((2 * y1) - h) + f_g) / divisor) * timestep;
dydt = [dy1dt;dy2dt];
end
