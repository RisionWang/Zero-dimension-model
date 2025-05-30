%%O2 heat capacity
function Cp_O2= Cp_O2(T) % K
         if T<=700 
             t=T./1000;
             Cp_O2=31.32234+(-20.23531)*t+57.86644*t.^2+(-36.50624)*t.^3+(-0.007374)./t.^2; %J/(mol*K)
         elseif T<=2000
             t=T./1000;
             Cp_O2=30.03235+8.772972*t+(-3.988133)*t.^2+0.788313*t.^3+(-0.741599)./t.^2;  %J/(mol*K)
         else
             t=T./1000;
             Cp_O2=20.91111+10.72071*t+(-2.020498)*t.^2+0.146449*t.^3+9.245722./t.^2; %J/(mol*K)
         end
end