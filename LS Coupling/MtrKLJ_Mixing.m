function [ MtrKLJ ] = MtrKLJ_Mixing(MangL, MangS)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
i = 1;
[m,n] = size(MangS);



for i2 = 1:m   
    J = MangL(i2) + MangS(i2);
    if MangL(i2) >= MangS(i2)
        X = MangS(i2)*2 +1;
        while X > 0
            MtrKLJ(i,1) = MangS(i2)*2 +1;
            MtrKLJ(i,2) = MangL(i2);
            MtrKLJ(i,3) = J;
            J = J-1;
            i = i+1;
            X = X-1;
        end
    elseif MangL(i2) < MangS(i2)
        L = MangL(i2)*2 +1;
        while L > 0
            MtrKLJ(i,1) = MangS(i2)*2+1;
            MtrKLJ(i,2) = MangL(i2);
            MtrKLJ(i,3) = J;
            J = J-1;
            i = i+1;
            L = L-1;
        end
    end
end


end

