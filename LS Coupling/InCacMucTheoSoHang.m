function [ ] = InCacMucTheoSoHang(Mtr)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[m,n] = size(Mtr);

for b1 = 1:m
    l = Mtr(b1,2);
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

for b1 = 1:m
    x = x + 1;
    if L ~=  mangl(b1) || K ~= Mtr(b1,1)
        y = y + 1;
        L = mangl(b1);
        K = Mtr(b1,1);
        x = 1;
    end
    
    k = num2str(Mtr(b1,1));
    j = num2str(Mtr(b1,3));
    l = mangl(b1);
    figure(2);
    d = ['^{',k,'}',l,'_{',j,'}'];
    d = char(d);
    text(15*x, 190-20*y, d, 'FontSize', 10);
    hold on
end

axis([0 200 -200 200]);
axis off
end


