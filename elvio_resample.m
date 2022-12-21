function [v,t,a,a1,v0]=elvio_resample(c,T)
% resample a cycle to a fixed sampling time T
    ct = [0;cumsum(c(:,1))];
    cv = c([end 1:end],2);
    t = (0:T:ct(end))';               % new time samples
    v = interp1(ct,cv,t);             % resampled velocite
    a = (v([2:end 1],:)-v([end 1:end-1],:))./T./2; % symmetric acceleration
    a1 = (v([2:end 1],:)-v)./T;      % one sided accerelation
    v0 = mean(v);                    % average speed
end