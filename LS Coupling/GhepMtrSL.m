function [ MtrSL ] = GhepMtrSL( MtrSL1, MtrSL2 )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
[m,n] = size(MtrSL1);
[m1,n1] = size(MtrSL2);
a = 1;
for i = 1 : m
    for j = 1 : m1
        max = MtrSL1(i,1) + MtrSL2(j,1);
        min = abs(MtrSL1(i,1) - MtrSL2(j,1));
        for k = min:max
            MtrSL(a,1) = k;
            MtrSL(a,2) = MtrSL1(i,2) + MtrSL2(j,2);
            a = a + 1;
        end
    end
end

