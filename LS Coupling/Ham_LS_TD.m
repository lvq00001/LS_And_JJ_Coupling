function [MtrKLJ] = Ham_LS_TD(MangPL, DoDaiMangPL)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
MtrCacTrangThaiKhaDi  = TimCacTrangThaiKhaDi(MangPL,DoDaiMangPL);

[ MtrSapXepCacTrangThai, MangMS, MangML ] = SapXepCacTrangThai(MtrCacTrangThaiKhaDi);

MtrKLJ = MtrKLJ_2(MtrSapXepCacTrangThai, MangMS, MangML);

end

