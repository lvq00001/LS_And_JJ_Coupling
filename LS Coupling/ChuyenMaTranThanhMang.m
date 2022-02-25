function[Mang] = ChuyenMaTranThanhMang(Mtr)
[m,n] = size(Mtr);
viTri = 1;
for a1 = 1:m
    for a2 = 1:n
        Mang(viTri) = Mtr(a1,a2);
        viTri = viTri+1;
    end
end