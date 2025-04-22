%energy for the pump
function Q_pump=Q_pump(T_red,P_O2,P_Total,eta_htw) %K Pa Pa 
         T0=293.15; %泵内温度 K
         delta_red=delta_Ceria(T_red,P_O2);
         delta_1=delta_Ceria(T_red,0.21*P_Total);
         n_o2=0.5*(delta_red-delta_1);
         n_n2=n_N2(T_red,P_O2,P_Total);
         W_pump=(n_o2+n_n2)*8.3145*T0*log(101325/P_Total)./eta_Pump(P_Total);
         Q_pump=W_pump/eta_htw;
end