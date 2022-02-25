clc
clear

[MangPL,DoDaiMangPL] = NhapSoDoDienTu();

MangPL = DoiKyTuSangSo(MangPL, DoDaiMangPL);

MtrCacTrangThaiKhaDi  = TimCacTrangThaiKhaDi(MangPL,DoDaiMangPL)

[ MtrSapXepCacTrangThai, MangMS, MangML ] = SapXepCacTrangThai(MtrCacTrangThaiKhaDi);
MtrSapXepCacTrangThai

MtrKLJ = MtrKLJ_2(MtrSapXepCacTrangThai, MangMS, MangML)

[soHang, soMuc] = InCacMucTheoSoHang_RutGon(MtrKLJ)

SoPhanTu = TimSoPhanTuCuaToHop(MangPL, DoDaiMangPL);
if DoDaiMangPL <= SoPhanTu / 2
    MtrKLJ = sortrows(MtrKLJ, [-1 -2 3]);
else
    MtrKLJ = sortrows(MtrKLJ, [-1 -2 -3]);
end
InCacMucTheoSoHang(MtrKLJ)
