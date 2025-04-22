%% energy for heating the sweep gas 
function Q_sweep_heat=Q_sweep_heat(T_red,P_O2,P_Total,e_g)  %% K，Pa
T0=293.15;
delta_1=delta_Ceria(T_red,P_Total*0.21);
delta_2=delta_Ceria(T_red,P_O2);
n_o2=0.5*(delta_2-delta_1);
n_n2=n_N2(T_red,P_O2,P_Total);
Q_sweep_heat=1000*(1-e_g)*(n_n2*(H_N2_0(T_red)-H_N2_0(T0))+n_o2*(H_O2_0(T_red)-H_O2_0(T0)));
end