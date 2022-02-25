function [ MtrSapXepCacTrangThai, MangMS, MangML ] = SapXepCacTrangThai(MtrCacTrangThaiKhaDi)
%UNTITLED4 Summary of this function goes here
%   In a matrix have ML:-ML rows and MS:-MS columns, if there is a combination of
% (ML, MS) exist in MtrCacTrangThaiKhaDi then in MtrSapXepCacTrangThai
% the location of (ML, MS) will increase by 1   
MaxMS = max(MtrCacTrangThaiKhaDi(:,2));
MaxML = max(MtrCacTrangThaiKhaDi(:,1));
tam = MaxMS;
dem = 1;
% Find MS:-MS
while tam >= -MaxMS  
    MangMS(dem) = MaxMS;
    MaxMS = MaxMS -1;
    dem = dem +1;
end
tam = MaxML;
dem = 1;
% Find ML:-ML
while tam >= -MaxML  
    MangML(dem) = MaxML;
    MaxML = MaxML -1;
    dem = dem +1;
end

[m,] = size(MtrCacTrangThaiKhaDi);
MtrSapXepCacTrangThai = zeros(length(MangML), length(MangMS));
for i = 1:length(MangMS)
    for j = 1:length(MangML)
        for k = 1:m
            if MangMS(i) == MtrCacTrangThaiKhaDi(k,2) && MangML(j) == MtrCacTrangThaiKhaDi(k,1)
                MtrSapXepCacTrangThai(j,i) = MtrSapXepCacTrangThai(j,i) + 1;
                MtrCacTrangThaiKhaDi(k,1) = NaN;
                MtrCacTrangThaiKhaDi(k,2) = NaN;
            end
        end
    end
end
MangML = MangML';
end
