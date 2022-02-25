function[MtrEC] = DoiKyTuSangSo_Mixing(MangElectronConfig)

[m,n] = size(MangElectronConfig);
for i = 1:n
    c = str2double(regexp(cell2mat(MangElectronConfig(i)),'\d','match'));
    MtrEC(i,1) = c(1);
    MtrEC(i,3) = c(2);
    l = regexp(cell2mat(MangElectronConfig(i)),'\D','match');
    l = char(l);
    switch l
        case 's'
            l = 0;
        case 'p'
            l = 1;
        case 'd'
            l = 2;
        case 'f'
            l = 3;
    end
    MtrEC(i,2) = l;
end
MtrEC;
end
