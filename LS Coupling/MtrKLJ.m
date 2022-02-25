function[MtrKLJ] = MtrKLJ(MangL, MangS, MangPL)

i = 1;
ChanLe = 0;
a = mod(length(MangPL),2);
if (a ~= 0)
    ChanLe = 0.5;
end

for i1 = max(MangL):-1:0
    for i2 = ChanLe:max(MangS)
        J = i1 + i2;
        if i1 >= i2
            X = i2*2 +1;
            while X > 0
                  MtrKLJ(i,1) = i2*2 +1;
                  MtrKLJ(i,2) = i1;
                  MtrKLJ(i,3) = J;
                  J = J-1;  
                  i = i+1;
                  X = X-1;
            end
        elseif i1 < i2
            L = i1*2 +1;
            while L > 0
                  MtrKLJ(i,1) = i2*2+1;
                  MtrKLJ(i,2) = i1;
                  MtrKLJ(i,3) = J;
                  J = J-1;  
                  i = i+1;
                  L = L-1;
            end
        end
    end
end