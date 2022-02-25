function[MangJ] = TimMangJ(MangPL)
i1 = 1;
for i = MangPL
    MangJ(i1, 1) = i - 0.5;
    MangJ(i1, 2) = i + 0.5;
    i1 = i1 + 1;
end