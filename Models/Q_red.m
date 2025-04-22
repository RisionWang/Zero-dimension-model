%energy for reduction
function Q_red=Q_red(T_red,P_O2,delta_ox) %delta_ox为氧化结束后的氧空位数
         delta_red=delta_Ceria(T_red,P_O2); %还原结束时的氧空位数量
         f=@(x) Delta_H_Ceria(x); 
         Q_red=-500*integral(f,delta_ox,delta_red); %J
end