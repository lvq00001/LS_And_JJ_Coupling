function[MangS] = MangS(MangPL)
a2 = 1;
S = length(MangPL)*0.5;
while S >= 0
    MangS(a2) = S;
    a2 = a2+1;
    S = S-1;
end