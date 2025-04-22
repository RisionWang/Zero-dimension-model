%energy for preheating the CO2
function Q_ox=Q_ox(T_red,T_ox,P_O2,e_g,delta_ox)%K Pa
         f=@(x) Cp_CO2(x);
         a=integral(f,293.15,T_ox,'Arrayvalued',true);% 293.15为环境温度 K
         b=n_CO2(T_red,T_ox,P_O2,delta_ox);
         delta_red=delta_Ceria(T_red,P_O2);
         f1=@(x) Delta_H_Ceria(x)*500-282.8*1000;
         c=integral(f1,delta_ox,delta_red);  %% 氧化过程放出热量 
         Q_ox=(1-e_g)*(b*a-c);
         if Q_ox<0
           Q_ox=0;
         end
end