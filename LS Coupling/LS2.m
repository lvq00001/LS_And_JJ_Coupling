% Script LS
clc
clear

[MangPL,DoDaiMangPL] = NhapSoDoDienTu();

MangPL = DoiKyTuSangSo(MangPL, DoDaiMangPL);

MangL = MangL(MangPL)

MangS = MangS(MangPL)

MtrKLJTongHop = MtrKLJ(MangL, MangS, MangPL);
[soHang, soMuc] = InCacMucTheoSoHang_RutGon(MtrKLJTongHop)
MtrKLJTongHop = sortrows(MtrKLJTongHop, [-1 -2 3]); % sort matrix according to Hund's rule
InCacMucTheoSoHang(MtrKLJTongHop)

