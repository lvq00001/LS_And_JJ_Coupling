function [ soHang, soMuc] = InCacMuc_jj_TD( Mtr, MangPL )
[m,n] = size(Mtr);
soLanXuatHien(1,1) = MangPL(1) - 0.5;
soLanXuatHien(1,2) = MangPL(1) + 0.5;
soMuc = m;
soHang = 0;
y = 0;
x = 1;
dongCu = LayDongMaTran(1,Mtr);
cacSoJ = '';
for b1 = 1:m
    dongMoi = LayDongMaTran(b1,Mtr);
    if isequal(dongCu,dongMoi) == 1 && b1 <= m
        if mod(Mtr(b1,n), 1) ~= 0
            Mtr(b1,n) = Mtr(b1,n) * 2;
            cacSoJ = strcat(cacSoJ, num2str(Mtr(b1,n)));
            cacSoJ = strcat(cacSoJ, '/2');
            cacSoJ = strcat(cacSoJ, {' '});
        else
            cacSoJ = strcat(cacSoJ, num2str(Mtr(b1,n)));
            cacSoJ = strcat(cacSoJ, {' '});
        end
    end
    if isequal(dongCu,dongMoi) ~= 1
        j = 1;
        soHang = soHang + 1;
        dongCu = LayDongMaTran(b1-1,Mtr);
        tam = soLanXuatHien(1,1);
        soLanXuatHien(2,j) = 0;        
        for i = 1:length(dongCu)
            if tam == dongCu(i)
                soLanXuatHien(2,j) = soLanXuatHien(2,j) + 1;
            else
                tam = dongCu(i);
                j = j + 1;                
                soLanXuatHien(2,j) = 1;
            end
        end       
        cacSoJ = char(cacSoJ);
        if n == 3
            j1 = strcat(num2str(Mtr(b1-1,1) * 2), '/2');
            j2 = strcat(num2str(Mtr(b1-1,2) * 2), '/2');
            d = ['[',j1,', ',j2,']','_{',cacSoJ,'}'];
        else
            j1 = strcat(num2str(soLanXuatHien(1,1) * 2), '/2');
            j2 = strcat(num2str(soLanXuatHien(1,2) * 2), '/2');
            d = ['[',j1,'^{',num2str(soLanXuatHien(2,1)),'}',', ',j2,'^{',num2str(soLanXuatHien(2,2)),'}',']','_{',cacSoJ,'}'];
        end
        d = char(d);
        text(5+30*x, 190-20*y, d, 'FontSize', 10);
        hold on
        y = y + 1;
        cacSoJ = '';
        soLanXuatHien = soLanXuatHien(1,:);
        dongCu = [];
        dongCu = dongMoi;
        dongMoi = [];
        if b1 <= m
            if mod(Mtr(b1,n), 1) ~= 0
                Mtr(b1,n) = Mtr(b1,n) * 2;
                cacSoJ = strcat(cacSoJ, num2str(Mtr(b1,n)));
                cacSoJ = strcat(cacSoJ, '/2');
                cacSoJ = strcat(cacSoJ, {' '});
            else
                cacSoJ = strcat(cacSoJ, num2str(Mtr(b1,n)));
                cacSoJ = strcat(cacSoJ, {' '});
            end
        end
    end
    % ********************************************
    if b1 == m
        b1 = b1 + 1;
        j = 1;
        soHang = soHang + 1;
        dongCu = LayDongMaTran(b1-1,Mtr);
        tam = soLanXuatHien(1,1);
        soLanXuatHien(2,j) = 0;        
        for i = 1:length(dongCu)
            if tam == dongCu(i)
                soLanXuatHien(2,j) = soLanXuatHien(2,j) + 1;
            else
                tam = dongCu(i);
                j = j + 1;                
                soLanXuatHien(2,j) = 1;
            end
        end       
        cacSoJ = char(cacSoJ);       
        if n == 3
            j1 = strcat(num2str(Mtr(b1-1,1) * 2), '/2');
            j2 = strcat(num2str(Mtr(b1-1,2) * 2), '/2');
            d = ['[',j1,', ',j2,']','_{',cacSoJ,'}'];
        else
            j1 = strcat(num2str(soLanXuatHien(1,1) * 2), '/2');
            j2 = strcat(num2str(soLanXuatHien(1,2) * 2), '/2');
            d = ['[',j1,'^{',num2str(soLanXuatHien(2,1)),'}',', ',j2,'^{',num2str(soLanXuatHien(2,2)),'}',']','_{',cacSoJ,'}'];
        end
        d = char(d);
        text(5+30*x, 190-20*y, d, 'FontSize', 10);
        hold on
    end
end
axis([0 200 0 200]);
axis off
end


