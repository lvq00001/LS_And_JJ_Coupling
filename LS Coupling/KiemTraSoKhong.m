function [dem] = KiemTraSoKhong(Mtr)
%   Return 1 if all elements in the matrix is 0
    [m,n] = size(Mtr);
    % dem = 0;
    dem = 1;
    for i = 1:m
        for j = 1:n
            if Mtr(i,j) ~= 0
                dem = 0;
                break;
            end        
        end    
    end
end

