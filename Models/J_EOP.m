%% Sum of the EOP current
function J_EOP=J_EOP(T_red,P_O2,P_Total) % 还原温度 K 目标氧分压 Pa  电化学氧泵工作温度 ℃ 反应器总压 Pa
         F=96485; % 法拉第常数 C/mol
         P0=P_Total*0.21; %反应器初始氧分压
         delta_1=delta_Ceria(T_red,P0); %初始氧空位
         delta_2=delta_Ceria(T_red,P_O2); %还原结束氧空位
         n_o2=0.5*(delta_2-delta_1);
         A=pi*0.03^2; %氧泵面积 m2 
         J_EOP=4*F*n_o2/A;  % A/m^2
end