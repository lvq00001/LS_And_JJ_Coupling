function [ MtrSapXepCacTrangThai, JTongPhanBiet, mangMj ] = TimMtrSapXepCacTrangThai_jj( MtrCacTrangThaiKhaDi_jj )
[~,n] = size(MtrCacTrangThaiKhaDi_jj);
Mtr = MtrCacTrangThaiKhaDi_jj(:,n-1:n);
jTong = Mtr(:,1);

maxMj = max(Mtr(:,2));
a = 1;
for i = maxMj:-1:-maxMj
    mangMj(a) = i;
    a = a + 1;
end
[m,~] = size(jTong);
j = -1;
a = 1;
for i = 1:m
    if jTong(i) ~= j
        JTongPhanBiet(a) = jTong(i);
        a = a + 1;
        j = jTong(i);
    end    
end
MtrSapXepCacTrangThai = zeros(length(JTongPhanBiet), length(mangMj));
for i = 1:length(JTongPhanBiet)
    for j = 1:length(mangMj)
        for k = 1:size(Mtr,1)
            if mangMj(j) == Mtr(k,2) && JTongPhanBiet(i) == Mtr(k,1)
                MtrSapXepCacTrangThai(i,j) = MtrSapXepCacTrangThai(i,j) + 1;                             
                Mtr(k,1) = NaN;
                Mtr(k,2) = NaN;
            end            
        end
    end
end
end


