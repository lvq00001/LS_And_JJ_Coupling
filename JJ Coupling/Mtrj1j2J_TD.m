function [ Mtrj1j2J_TD ] = Mtrj1j2J_TD( MtrCacTrangThaiKhaDi_jj, MtrJ )
% unique function return unique rows of the matrix
[~,n] = size(MtrCacTrangThaiKhaDi_jj);
Mtr = unique(MtrCacTrangThaiKhaDi_jj(:,1:n-1),'rows');
Mtrj1j2J_TD = [];
[m,n] = size(Mtr);
[m1,~] = size(MtrJ);

for i = 1:m1
    for j = 1:m
        if Mtr(j,n) == MtrJ(i,1)
            Mtrj1j2J_TD = [ Mtrj1j2J_TD; Mtr(j,1:n-1), MtrJ(i,2) ];        
        end
    end    
end
end

