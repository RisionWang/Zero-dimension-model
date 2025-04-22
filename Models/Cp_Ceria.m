%CeO2 Specific heat Capacity in KJ/(mol*K) 
function Cp_Ceria=Cp_Ceria(T) %K
         if T<1100
         Cp_Ceria=-0.00001271*T^2+0.2697656*T+299.8695684;%J/(Kg*K)
         else
         Cp_Ceria=444.27;
         end
         Cp_Ceria=Cp_Ceria*0.1721148; %J/(mol*K)
end