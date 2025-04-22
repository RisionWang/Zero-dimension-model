% energy for seperating the inert gas 
function Q_sweep_sp=Q_sweep_sp(T_red,P_O2,P_Total,eta_htw) %K Pa
         if P_O2<5*101325E-4
             W_sweep_sp=12000*n_N2(T_red,P_O2,P_Total);
         else
             W_sweep_sp=1000*log(0.21*101325./P_O2).^2*n_N2(T_red,P_O2,P_Total);
         end
             Q_sweep_sp=W_sweep_sp/eta_htw; % J
end