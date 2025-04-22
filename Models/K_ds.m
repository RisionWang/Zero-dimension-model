%% reaction constant of CO2 reduction
function K_ds=K_ds(T) % K
         K_ds_0=exp(1000*(-394.38+(137.29))./(8.3145*298.15)); 
         f=@(x) 1000*Delta_H_CO2(x)./(8.3145*x.^2);
         K_ds=K_ds_0*exp(integral(f,298.15,T,"ArrayValued",true));
end