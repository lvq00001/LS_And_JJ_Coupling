function [MtrKLJ] = MtrKLJ_2(MtrSapXepCacTrangThai, MangMS, MangML)
%   Part 1 return MtrKLJ and modified MtrSapXepCacTrangThai, in
%MtrSapXepCacTrangThai only rows be cut, the column still the same.
%   Part 2 return MtrKLJ and modified MtrSapXepCacTrangThai, in
%MtrSapXepCacTrangThai both rows and column be cut.
MtrKLJ = zeros(1,3);
[m,n] = size(MtrSapXepCacTrangThai);
cotDau = 1;
cotCuoi = n;
dongDau = 1;
dongCuoi = m;
while m > 0
    % Part 1
    if KiemTraSoNhoHonMot(MtrSapXepCacTrangThai) == 0             
        MtrKLJ1 = XuatMtrKLJ(MangMS, MangML(dongDau:dongCuoi));
        MtrKLJ = [MtrKLJ; MtrKLJ1];
        MtrSapXepCacTrangThai = TruMtr(MtrSapXepCacTrangThai,1,n);
        
        if KiemTraSoDuong(MtrSapXepCacTrangThai(dongDau,:)) == 0
            dongDau = dongDau + 1;
            dongCuoi = dongCuoi - 1;
            MangML = MangML(dongDau:dongCuoi);
            MtrSapXepCacTrangThai =  MtrSapXepCacTrangThai(dongDau:dongCuoi,:);
        end
        [m,n] = size(MtrSapXepCacTrangThai);
        dongDau = 1;
        dongCuoi = m;
    else
    % End part 1
        % Part 2
        dem = 0;
        while (cotCuoi-cotDau) >= 0 && (dem == 0) && (dongCuoi-dongDau) >= 0 ;
            cotDau = cotDau + 1;
            cotCuoi = cotCuoi - 1;
            Mtr = MtrSapXepCacTrangThai(:,cotDau:cotCuoi);
            if KiemTraSoKhong(Mtr) == 0 % If all elements' value are zero then stop the loop
                if KiemTraSoNhoHonMot(Mtr) == 0
                    MtrKLJ1 = XuatMtrKLJ(MangMS(cotDau:cotCuoi), MangML(dongDau:dongCuoi));
                    MtrKLJ = [MtrKLJ; MtrKLJ1];
                    MtrSapXepCacTrangThai = TruMtr(MtrSapXepCacTrangThai,cotDau,cotCuoi);
                    
                    if KiemTraSoDuong(MtrSapXepCacTrangThai(dongDau,:)) == 0
                        dongDau = dongDau + 1;
                        dongCuoi = dongCuoi - 1;
                        MangML = MangML(dongDau:dongCuoi);
                        MtrSapXepCacTrangThai =  MtrSapXepCacTrangThai(dongDau:dongCuoi,:);
                    end
                    
                    [m,n] = size(MtrSapXepCacTrangThai);
                    dongDau = 1;
                    dongCuoi = m;
                    cotDau = 1;
                    cotCuoi = n;
                    dem = 1;
                end
            elseif KiemTraSoKhong(Mtr) == 1
                dem = 1;
                MtrSapXepCacTrangThai(:,:) = [];
            end
        end
        % End part 2
    end
    [m,n] = size(MtrSapXepCacTrangThai);
end
MtrKLJ(1,:) = []; % Delete the initialized row
end

