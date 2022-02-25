function [ ] = In_RutGon( Mtr, mangl, b1, tam, x, y )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
k = num2str(Mtr(b1-1,1));
l = mangl(b1-1);
chuoi_j = '';
for i1 = 1:length(tam)
    if mod(tam(i1),1) ~= 0
        tam(i1) = tam(i1) * 2;
        chuoi_j = strcat(chuoi_j, num2str(tam(i1)));
        chuoi_j = strcat(chuoi_j, '/2');
        chuoi_j = strcat(chuoi_j, {' '});
    else
        chuoi_j = strcat(chuoi_j, num2str(tam(i1)));
    end
end
chuoi_j = char(chuoi_j); % convert string array to string (actuallly this is a char array)
d = ['^{',k,'}',l,'_{',chuoi_j,'}'];
d = char(d);
% text(5+15*x, 190-10*y, d, 'FontSize', 10);
text(5+10*x, 190-15*y, d, 'FontSize', 10);
hold on

end

