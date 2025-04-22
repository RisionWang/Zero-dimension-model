% energy for heating the ceria from oxidation to reduction
function Q_sense=Q_sense(T_ox,T_red,e_s) %输入氧化温度K 还原温度K 固相热回收率
         f=@(x) Cp_Ceria(x);
         Q_sense= ((1-e_s)*(integral(f,T_ox,T_red,"ArrayValued",true))); % J
end