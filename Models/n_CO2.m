%CO2 in mole 
function n_CO2=n_CO2(T_red,T_ox,P_O2,delta_ox) %K Pa
         delta_red=delta_Ceria(T_red,P_O2);
         f=@(x) 1./Cr_CO2(T_ox,-Delta_H_Ceria(x)/2,-1000*Delta_S_Ceria(x)/2);
         n_CO2=integral(f,delta_ox,delta_red);
end