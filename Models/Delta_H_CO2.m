%%Standard reaction enthalpy for CO2 reduction
function Delta_H_CO2=Delta_H_CO2(T) % K
         f=@(x) Cp_CO(x)+0.5.*Cp_O2(x)-Cp_CO2(x);
         Delta_H_CO2=-(-393.52*1000)+(-110.53*1000)+integral(f,298.15,T);
         Delta_H_CO2=Delta_H_CO2./1000; % KJ/mol
end