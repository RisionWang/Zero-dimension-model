%Standard reaction entropy for ceria reduction
function Delta_S_Ceria=Delta_S_Ceria(x) %x为对应的氧空位
         Delta_S_Ceria=-2.892e+012*exp(-((x+0.465)/0.0846 ).^2)-0.3767*exp(-((x-0.01618)/0.1286).^2)-0.0583*exp(-((x-0.01474)/0.02475).^2)-0.0238*exp(-((x-0.1601)/0.05576).^2)-0.2641*exp(-((x-0.2632)/0.148).^2);%KJ/(mol*K)
end