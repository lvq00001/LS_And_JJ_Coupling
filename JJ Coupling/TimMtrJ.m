function [ MtrJ ] = TimMtrJ( MtrSapXepCacTrangThai, JTongPhanBiet, mangMj )
[m,~] = size(MtrSapXepCacTrangThai);
a = 1;
for i = 1:m
    Mang = MtrSapXepCacTrangThai(i,:);
    cotDau = 1;
    cotCuoi = length(Mang);
    Mj = 1;
    while ( cotCuoi-cotDau >= 1 && mod((cotCuoi-cotDau),2) == 1) || ( cotCuoi-cotDau >= 0 && mod(cotCuoi-cotDau,2) == 0)
        if KiemTraKhacKhong(Mang) == 1
            MtrJ(a,1) = JTongPhanBiet(i);
            MtrJ(a,2) = mangMj(Mj);
            a = a + 1;
            %cotDau = cotDau + 1;
            %cotCuoi = cotCuoi - 1;
            %Mang = Mang(cotDau:cotCuoi);
            %Mj = Mj + 1;
            %cotDau = 1;
            %cotCuoi = length(Mang);
            Mang = Mang - 1;
        else
            cotDau = cotDau + 1;
            cotCuoi = cotCuoi - 1;
            Mang = Mang(cotDau:cotCuoi);
            Mj = Mj + 1;
            cotDau = 1;
            cotCuoi = length(Mang);
        end
    end
end
end

