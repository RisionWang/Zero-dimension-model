%% delta of ceria 
function delta_Ceria=delta_Ceria(T,P_O2) %K Pa
        P=101325;% 标准大气压 Pa
        syms x; %定义一个变量用于后续计算
        delta_h=Delta_H_Ceria(x);
        delta_s=Delta_S_Ceria(x);
        x=vpasolve(delta_h-T*delta_s-8.3145*0.001*T*log(P_O2/P)==0,x);%范德霍夫方程
        delta_Ceria=double(x);
end