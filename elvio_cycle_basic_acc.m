function [data]=elvio_cycle_basic_acc(v0,a,n)
% This function returns the speed data for the artemis (CADC) urban cycle.
    vs = (0:(n-1)).*a + v0;
    vs = vs';
    data = [vs.*0+1 vs vs.*0-1 vs.*0];
end