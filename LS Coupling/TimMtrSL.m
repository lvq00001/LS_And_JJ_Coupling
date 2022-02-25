function [ MtrSL ] = TimMtrSL( MtrKLJ )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
MtrT = [ (MtrKLJ(:,1) - 1) / 2, MtrKLJ(:,2) ];
[m,n] = size(MtrT);
L = -1;
S = -1;
j = 1;
for i = 1:m
    if MtrT(i,2) ~= L || ( MtrT(i,2) == L && MtrT(i,1) ~= S )
        MtrSL(j,1) = MtrT(i,1);
        MtrSL(j,2) = MtrT(i,2);
        j = j + 1;
        L = MtrT(i,2);
        S = MtrT(i,1);
    end
end
end

