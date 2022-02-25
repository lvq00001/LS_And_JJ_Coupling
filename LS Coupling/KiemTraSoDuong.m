function[dem] = KiemTraSoDuong(Mtr)
%   Return 1 if there is one element have value greater than 0
    [m,n] = size(Mtr);
    dem = 0;
    for i = 1:m
        for j = 1:n
            if Mtr(i,j) > 0
                dem = 1;
                break;
            end        
        end    
    end

end

