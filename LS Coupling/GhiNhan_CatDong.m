function [ output_args ] = GhiNhan_CatDong(Mtr)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
if KiemTraSoNhoHonMot(Mtr) == 0
    MtrKLJ1 = XuatMtrKLJ(MangMS(cotDau:cotCuoi), MangML(dongDau:dongCuoi))
    MtrKLJ = [MtrKLJ; MtrKLJ1];
    MtrSapXepCacTrangThai = TruMtr(MtrSapXepCacTrangThai,cotDau,cotCuoi)
    
    if KiemTraSoDuong(MtrSapXepCacTrangThai(dongDau,:)) == 0
        dongDau = dongDau + 1
        dongCuoi = dongCuoi - 1
        MangML = MangML(dongDau:dongCuoi)
        MtrSapXepCacTrangThai =  MtrSapXepCacTrangThai(dongDau:dongCuoi,:)
    end
    
    [m,n] = size(MtrSapXepCacTrangThai);
    dongDau = 1;
    dongCuoi = m;
    cotDau = 1;
    cotCuoi = n;
    dem = 1;
end

end

