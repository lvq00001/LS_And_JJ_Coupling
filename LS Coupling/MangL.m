function[MangL] = MangL(MangPL)
a1 = 1;
L = sum(MangPL);
while L >= 0
    MangL(a1) = L;
    a1 = a1+1;
    L = L-1;
end