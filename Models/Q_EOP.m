%%  energy for SG & EOP method
function Q_EOP=Q_EOP(T_red,P_O2,P_Total,eta_htw) % K Pa Pa 
         T0=293.15; %室内温度
         T1=1373.15; % 泵工作温度 K
         F=96485; % 法拉第常数 C/mol
         R=8.3145; %气体常数 J/mol*k
         A=3.14*0.03^2; %氧泵面积 m2
         syms x;
         J0=J_EOP(T_red,P_O2,P_Total); % 电流密度计算
         E1=(R*T1)/(4*F)*log(0.21*101325/P_O2); % 平衡电位计算
         eq1=1.344e10*exp(-1e5/(R*T1))*(R*T1/F)*(0.21)^0.5*(exp(2*F*x/(R*T0))-exp(-2*F*x/(R*T0)))==J0;
         eq2=1.344e10*exp(-1e5/(R*T1))*(R*T1/F)*(P_O2/101325)^0.5*(exp(2*F*x/(R*T0))-exp(-2*F*x/(R*T0)))==J0;
         E2=abs(vpasolve(eq1,x));
         E3=abs(vpasolve(eq2,x));
         E4=2.99*10^(-5)*5000*50*10^(-6)*(10300/1000);
         E=E1+E2+E3+E4;
         Q_EOP=round((J0*E*A)/eta_htw,4);  % J
end