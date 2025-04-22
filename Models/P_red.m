% Oxygen vacancy based on the oxygen partial pressure
function P_red=P_red(T,delta)% K  
         syms p;
         p_red=solve(Delta_H_Ceria(delta)-T*Delta_S_Ceria(delta)-8.3145*0.001*T*log(p)==0,p);
         P_red=101325*double(p_red); % Pa
end