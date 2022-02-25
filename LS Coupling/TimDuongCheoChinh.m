function[Dcc] = TimDuongCheoChinh(Mtr)
[m,] = size(Mtr);
for i = 1:m
    Dcc(i) = Mtr(i, i);
end