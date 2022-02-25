function [soHang, soMuc] = InCacMucTheoSoHang_RutGon(Mtr)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[m,n] = size(Mtr);
soMuc = m;
l2 = 0;
k2 = 0;
soHang = 0;
for b1 = 1:m
    l = Mtr(b1,2);
    k = Mtr(b1,1);
    if l2 ~= l || k2 ~= k
        soHang = soHang + 1;
        l2 = l;
        k2 = k;
    end   
    switch l
        case 0
            l = 'S';
        case 1
            l = 'P';
        case 2
            l = 'D';
        case 3
            l = 'F';
        case 4
            l = 'G';
        case 5
            l = 'H';
        case 6
            l = 'I';
        case 7
            l = 'J';
        case 8
            l = 'K';
        otherwise
            l = 'null';
    end
    mangl(b1) = l;
end
% set text cho cac muc
y = 0;
L = mangl(1);
K = Mtr(1,1);
x = 0;
i = 0;
text(5+10*x, 190-15*y, char(strcat('L = ',{' '},num2str(Mtr(1,2)))), 'FontSize', 10);
x = 1;
y = 1;
for b1 = 1:m
    if L ~= mangl(b1) || K ~= Mtr(b1,1)
        x = 1;
        In_RutGon( Mtr, mangl, b1, tam, x, y);
        if L ~= mangl(b1)
            x = 0;           
            y = y + 1;
            text(5+10*x, 190-15*y, char(strcat('L = ',{' '},num2str(Mtr(b1,2)))), 'FontSize', 10);
        end       
        i = 0;
        tam = [];
        x = 1;
        y = y + 1;
        L = mangl(b1);
        K = Mtr(b1,1);
    end
    if L ==  mangl(b1) && K == Mtr(b1,1)
        i = i + 1;
        tam(i) = Mtr(b1,3);
    end
    if b1 == m
        x = 1;       
        In_RutGon( Mtr, mangl, b1+1, tam, x, y)
    end
end
 axis([0 200 -200 200]);
 axis off

end


