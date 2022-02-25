function[MtrKLJ] = TimMtrKLJ_2(demMS,Mangi,Mangj,n,t)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

iMax = max(Mangi);
jMax = max(Mangj);

dong = 1;
if demMS == n
    J = iMax + jMax;
    if t == 1
       MtrKLJ(dong,1) = iMax*2 + 1;
       MtrKLJ(dong,2) = jMax;
       MtrKLJ(dong,3) = J; 
    else
        while J >= 0 && dong <= length(Mangi)
            for i = 1:length(Mangi)      
                MtrKLJ(dong,1) = iMax*2 + 1;
                MtrKLJ(dong,2) = jMax;
                MtrKLJ(dong,3) = J;
                J = J - 1;
                dong = dong + 1;          
            end
        end
    end
elseif demMS > 0      
        for i = 1:length(Mangi)
           MtrKLJ(dong,1) = abs(Mangi(i))*2 + 1;
           MtrKLJ(dong,2) = jMax;
           MtrKLJ(dong,3) = abs(Mangi(i)) + jMax;         
           
           [m,] = size(MtrKLJ);
           if m > 1
                if MtrKLJ(dong,:) == MtrKLJ(dong-1,:)
                    J = MtrKLJ(dong-1,3) - 1;
                    if J > 0
                       MtrKLJ(dong,3) = J;
                    else
                       MtrKLJ(dong,:) = [];
                       dong = dong - 1;
                    end                    
                end
           end
           dong = dong + 1;
        end          
end
MtrKLJ
end

