function[Mtr] = LapBang(i,j)
i1 = 1;
i2 = 1;
for l = j:-1:-j
    for k = i:-1:-i
        Mtr(i1,i2) = l + k;
        i2 = i2 +1;
    end
    i1 = i1 +1;
    i2 = 1;
end