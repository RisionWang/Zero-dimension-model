%%N2 in mole based on an ideal mixtural model 
function n_N2=n_N2(T_red,P_O2,P_Total) % K Pa Pa
         delta_red=delta_Ceria(T_red,P_O2); %还原后的氧空位
         delta_1=delta_Ceria(T_red,0.21*P_Total); %还原开始时的氧空位
         f=@(x) (P_Total-P_red(T_red,x))./P_red(T_red,x);
         n_N2=0.5*integral(f,delta_1,delta_red,'Arrayvalued',true);
end