% Script jj_TD
clc
clear all

[MangPL,DoDaiMangPL] = NhapSoDoDienTu();

MangPL = DoiKyTuSangSo(MangPL, DoDaiMangPL);

MtrCacTrangThaiKhaDi_jj = TimMtrCacTrangThaiKhaDi_jj(MangPL,DoDaiMangPL);

[ MtrSapXepCacTrangThai, JTongPhanBiet, mangMj ] = TimMtrSapXepCacTrangThai_jj( MtrCacTrangThaiKhaDi_jj );

MtrJ = TimMtrJ( MtrSapXepCacTrangThai, JTongPhanBiet, mangMj );

Mtrj1j2J_TD = Mtrj1j2J_TD( MtrCacTrangThaiKhaDi_jj, MtrJ );

Mtrj1j2J_TD = sortrows(Mtrj1j2J_TD);
[ soHang, soMuc] = InCacMuc_jj_TD(Mtrj1j2J_TD, MangPL)