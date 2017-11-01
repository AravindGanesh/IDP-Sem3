% A short introductory script for Basic current and voltage calculations


 %*****Charging the capacitor bank******** 
capcitance=1e-3
Voltage=100
n_capacitors=10
capacitor_rating=100
Series_resistance=1000
projectile_length=0.02
external_resistance=1  % rails + projectile resistance
mass = 10e-3

%coils 
mu0 = 4*pi*1e-7
radius = 3e-2
turns = 200
coil_current = 5


t=linspace(0,10,1000);

B_coil = mu0*turns*coil_current/(2*radius)

eff_capacitance=capcitance*n_capacitors

charging_Time_constant=eff_capacitance*Series_resistance


% *****************Firing the gun***************


discharging_Time_constant=eff_capacitance*external_resistance



rail_current = (Voltage/external_resistance)*exp(-t/discharging_Time_constant); 


Force=rail_current*B_coil*projectile_length;



B_rails = 0 %measured in lab, is rather negligible
subplot(2,1,1);
plot(t,Force)
title('Force vs time')



subplot(2,1,2)
plot(t,rail_current)
title('Rail current vs time')

Energy_stored=0.5*eff_capacitance*(Voltage)^2






