function [ MtrCacTrangThaiKhaDi ] = TimCacTrangThaiKhaDi(MangPL,DoDaiMangPL)
%   Array a store the ms values in imaginary orbitan,
%Ex: (up down)(up down)(up down) => (1/2 -1/2)(1/2 -1/2)(1/2 -1/2)
%   Array b store the ml values in imaginary orbitan, Ex: 1 0 -1 => 1100-1-1
%   combnk(v, n) is number of n-combination from set v, v is
%array contain set of elements
%   sum(x,dim) returns the sum along dimension dim. Ex: x = [1 1; 1 1]
%=> sum(x,1) = [2 2], sum(x,2) = [2; 2]  
SoDienTu = DoDaiMangPL;
SoPhanTu = TimSoPhanTuCuaToHop(MangPL,DoDaiMangPL);

for i = 1:SoPhanTu
    if mod(i,2) ~= 0
        a(i) = 0.5;
    else
        a(i) = -0.5;
    end
end
dem = MangPL(1);
count = 1;
j = 1;
for i = 1:(SoPhanTu/2)
    while count <= 2
        b(j) = dem;
        j = j + 1;
        count = count +1;
    end
    count = 1;
    dem = dem - 1;
end
MS = combnk(a,SoDienTu);
ML = combnk(b,SoDienTu);
MS = sum(MS,2);
ML = sum(ML,2);
MtrCacTrangThaiKhaDi = [ML MS];
end
