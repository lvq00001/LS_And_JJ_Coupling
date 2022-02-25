function [Mtr] = TruMtr(Mtr,cotDau,cotCuoi)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    Mtr(:,cotDau:cotCuoi) = Mtr(:,cotDau:cotCuoi) - 1;
end

