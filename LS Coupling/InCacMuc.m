function [] = InCacMuc(Mtr)
[m,n] = size(Mtr)

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
dem = 0;
dem1 = 0;
b2 = 0;
for b1 = 1:m 
    b2 = b2 + 1;
    
    if XacDinhBoiSo(b1,6) == 1 && dem1 == 0
        dem = dem + 1;
        b2 = 1;
    elseif XacDinhBoiSo(b1,5) == 1 && dem1 ~= 0
        dem = dem + 1;
        b2 = 1;
    end
    
    k = num2str(Mtr(b1,1));
    j = num2str(Mtr(b1,3));
    l = mangl(b1);
    d = ['^{',k,'}',l,'_{',j,'}'];
    d = char(d);
    text(5+15*b2, 190-20*dem, d, 'FontSize', 10);
    hold on
end
axis([0 200 0 200]);
axis off
hold off
end
