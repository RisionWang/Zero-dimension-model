% CO2 transfer ratio
function    Cr_CO2=Cr_CO2(T,Delta_H,Delta_S) %K 输入的 Delta_H单位是（KJ/mol H2) Delta_S单位是（J/(mol*K) H2）
ds=(exp((-Delta_H*1000*2+T*Delta_S*2)/(8.3145*T)));
Cr_CO2=K_ds(T)./(K_ds(T)+ds.^(1/2));
Cr_CO2=double(Cr_CO2);
end