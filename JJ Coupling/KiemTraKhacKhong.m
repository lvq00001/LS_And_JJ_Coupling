function [ flag ] = KiemTraKhacKhong( Mang )
%   Return 0 if there is an element have value equal 0
flag = 1;
for i = 1:length(Mang)
    if Mang(i) == 0
        flag = 0;
        break;
    end
end
end

