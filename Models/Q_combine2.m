%% energy for SG+EOP method
function Q_combine2=Q_combine2(T_red,P_O2,P_Total,e_g,eta_htw)
         Q_combine2=round(Q_sweep_heat(T_red,P_O2,P_Total,e_g)+Q_EOP(T_red,P_O2,P_Total,eta_htw),4);
end