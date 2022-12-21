function [kp,kp_av] = stat_kp(c,a,m)
    kp = [
        a(1)*c(1)^2
        2*a(1)*c(2)*c(1)
        a(1)*(c(2)^2+2*c(3)*c(1))
        (a(2)+2*a(1)*c(3)*c(2))*c(1)
        a(2)*c(2)+a(1)*c(3)^2
        a(2)*c(3)
        a(3)
        ];
    kp_av = a(1)*m^2;
end