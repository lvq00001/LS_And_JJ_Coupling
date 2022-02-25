
function[MangPL,DoDaiMangPL] = NhapSoDoDienTu()
%   str = input(prompt,'s') returns the entered text as a string,
% without evaluating the input as an expression.
MangPL = input('Nhap phan lop vao: ','s'); 
MangPL = double(MangPL);
DoDaiMangPL=length(MangPL);
end
