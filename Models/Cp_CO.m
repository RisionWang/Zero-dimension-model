%%CO heat capacity
function Cp_CO=Cp_CO(T) %K
         if T<1300
             t=T./1000;
             Cp_CO=25.56759+6.096130*t+4.054656*t.^2+(-2.671301)*t.^3+0.131021./t.^2; % J/(mol*K)
         else
             t=T./1000;
             Cp_CO=35.15070+1.300095*t+(-0.205921)*t.^2+0.013550*t.^3+(-3.282780)./t.^2; % J/(mol*K)
         end
end