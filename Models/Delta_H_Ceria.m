%CeO2 Standard reaction enthalpy for ceria reduction
function Delta_H_Ceria=Delta_H_Ceria(x) %x为对应的氧空位
         Delta_H_Ceria=-1220*exp(-((x+0.1085)/0.2834).^2)-665.5*exp(-((x-0.06776)/0.07495).^2)-94.55*exp(-((x-0.1224)/0.08238).^2)+813.8*exp(-((x-0.06796)/0.08318).^2)-669*exp(-((x-0.3183)/0.1783).^2);%KJ/mol
end