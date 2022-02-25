function[SoPhanTu] = TimSoPhanTuCuaToHop(MangPL, DoDaiMangPL)
% return SoPhanTu is the maximum number of electron in a subshell
tam = MangPL(1);
for i = 2:DoDaiMangPL
    if MangPL(i) ~= tam
        disp('TimSoPhanTuCuaToHop bi loi, cac phan lop khong bang nhau');
    end
end
switch tam
      case 0
           SoPhanTu = 2; 
      case 1
           SoPhanTu = 6; 
      case 2
           SoPhanTu = 10;
      case 3
           SoPhanTu = 14;
    otherwise
           disp('TimSoPhanTuCuaToHop bi loi, khong co phan lop');
end
end