function [ mang ] = LayDongMaTran( x, Mtr )
%   Return an array which is row x of the matrix Mtr but doesn't take 
%   the last value in that row
[m,n] = size(Mtr);
for i = 1:n-1
    mang(i) = Mtr(x,i);
end
end

