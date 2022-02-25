function [MangPL] = ChuyenSoSangMangPL(PhanLop, DoDaiMangPL)
%   Put orbital number in an array, Ex: for p3 => MangPL = 1 1 1
for i = 1:DoDaiMangPL
    MangPL(i) = PhanLop;
end

