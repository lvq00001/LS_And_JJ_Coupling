function [MtrKLJ] = XuatMtrKLJ(MangMS, MangML)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here   
    MLmax = max(MangML);
    MSmax = max(MangMS);
    dem = 1;
    J = MSmax + MLmax;
    if MLmax >= MSmax
        %for i = 1:length(MangMS)
        for i = 1:(2*MSmax + 1)
               MtrKLJ(dem,1) = MSmax*2 + 1;
               MtrKLJ(dem,2) = MLmax;
               MtrKLJ(dem,3) = J;
               J = J - 1;
               dem = dem +1;
        end
    else
        for i = 1:(2*MLmax + 1)
               MtrKLJ(dem,1) = MSmax*2 + 1;
               MtrKLJ(dem,2) = MLmax;
               MtrKLJ(dem,3) = J;
               J = J - 1;
               dem = dem +1;
        end
    end
end

