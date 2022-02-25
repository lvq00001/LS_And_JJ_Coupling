function [ MtrCacTrangThaiKhaDi_jj ] = TimMtrCacTrangThaiKhaDi_jj(MangPL,DoDaiMangPL)
%   Return values of j that lead to value of MJ in the last column
SoDienTu = DoDaiMangPL;
j1 = MangPL(1) - 0.5;
j2 = MangPL(1) + 0.5;

% Find mj's values of j1 and j2 
a = 1;
for i = j1:-1:-j1
    mj1(a) = i;
    mangj(a) = j1;
    a = a + 1;
end

if j1 < 0
    mj1 = [];
end

a1 = 1;
for i = j2:-1:-j2
    mj2(a1) = i;
    mangj(a+a1-1) = j2;
    a1 = a1 + 1;
end

mj = [mj1, mj2];

MJ = combnk(mj,SoDienTu);
SUM = sum(MJ,2); % sum(x, 2) is a column vector containing the sum of each row
% SUM is MJ

mangj = combnk(mangj,SoDienTu); % find j's values (j's combination that satisfy Pauli exclusion principle
SUM2 = sum(mangj,2);

MtrCacTrangThaiKhaDi_jj = [mangj, SUM2, SUM];

end



