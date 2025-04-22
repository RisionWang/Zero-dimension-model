%% energy for SG+VP method
function Q_combine1=Q_combine1(T_red,P_O2,P_Total,e_g,eta_htw)
         Q1=Q_sweep_heat(T_red,P_O2,P_Total,e_g);
         Q2=Q_pump(T_red,P_O2,P_Total,eta_htw);
         Q_combine1=Q1+Q2;
end