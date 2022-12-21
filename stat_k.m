function [k,k_av] = stat_k(kp,kp_av,v0)
    k = kp.*0;
    for i=0:6
        for j=i:6
            k(7-i) = k(7-i) + nchoosek(j,i)*kp(7-j)*v0^(j-i); 
        end
    end
    k_av = [1;2*v0;v0^2]*kp_av;
end