function[MangPL] = DoiKyTuSangSo(MangPL, DoDaiMangPL)
for a1 = 1:DoDaiMangPL
    switch MangPL(a1)
        case 115
            MangPL(a1) = 0;continue;
        case 112
            MangPL(a1) = 1;continue;
        case 100
            MangPL(a1) = 2;continue;
        case 102
            MangPL(a1) = 3;continue;
        case 103
            MangPL(a1) = 4;continue;
        case 104
            MangPL(a1) = 5;continue;
        case 105
            MangPL(a1) = 6;continue;
        case 106
            MangPL(a1) = 7;continue;
        case 107
            MangPL(a1) = 8;continue;
    end
end