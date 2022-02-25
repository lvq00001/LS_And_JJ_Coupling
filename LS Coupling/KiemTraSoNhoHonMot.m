function[dem] = KiemTraSoNhoHonMot(Mtr)
%   Return 1 if there is an element in matrix is smaller than 1
    [m,n] = size(Mtr);
    dem = 0;
    for i = 1:m
        for j = 1:n
            if Mtr(i,j) < 1
                dem = 1;
                break;
            end        
        end    
    end
end

