function[count] = TimPhanTuTrongMang(Mang, so)
count = 0;
for phanTuMang = Mang
    if so == phanTuMang
        count = 1;
    end
end