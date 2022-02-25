clc
clear all

MangElectronConfig = input('Nhap vao cau hinh electron: ');

MtrEC = DoiKyTuSangSo_Mixing(MangElectronConfig);
[m,n] = size(MtrEC);

MangPL = ChuyenSoSangMangPL(MtrEC(1,2), MtrEC(1,3));
MtrKLJ = Ham_LS_TD(MangPL, MtrEC(1,3));
MtrSL1 = TimMtrSL(MtrKLJ);

for i = 2:m    
        MangPL = ChuyenSoSangMangPL(MtrEC(i,2), MtrEC(i,3));
        MtrKLJ = Ham_LS_TD(MangPL, MtrEC(i,3));
        MtrSL2 = TimMtrSL(MtrKLJ);
        MtrSL = GhepMtrSL( MtrSL1, MtrSL2 );     
end

MangS = MtrSL(:,1);
MangL = MtrSL(:,2);
MtrKLJTongHop = MtrKLJ_Mixing(MangL, MangS);

[soHang, soMuc] = InCacMucTheoSoHang_RutGon(MtrKLJTongHop)






