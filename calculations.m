% A short introductory script for Basic current and voltage calculations

%EDIT THIS LATER

 %*****Charging the capacitor bank******** 
capcitance=0.1
Voltage=200
n_capacitors=10
capacitor_rating=100
Series_resistance=1000

eff_capacitance=capcitance*n_capacitors
Time_constant=eff_capacitance*Series_resistance
charging_time=log(10)*Series_resistance*capcitance
Energy_stored=0.5*eff_capacitance*Voltage^2
%******************************************

% *****************Firing the gun***************



% *******TODO***********





