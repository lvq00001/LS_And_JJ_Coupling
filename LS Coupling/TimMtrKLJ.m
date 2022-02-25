function[MtrKLJ] = TimMtrKLJ(MtrSapXepCacTrangThai, MangMS, MangML)
MtrKLJ = [0 0 0];
Mangi = 0;
Mangj = 0;
demML = 0;
demMS = 0;
[m,n] = size(MtrSapXepCacTrangThai);
q = m;
t = m;
p = 1;

while q > (m-1)/2
    dem1 = 1;
    dem2 = 1;
    for i = 1:n
        
            for j = p:q
                if MtrSapXepCacTrangThai(j,i) > 0
                    demML = demML + 1;                
                end           
            end
            if demML == t           
                for k = p:q
                    Mangj(dem1) = MangML(k);
                    dem1 = dem1 +1;
                end
                MtrSapXepCacTrangThai(:,i) = MtrSapXepCacTrangThai(:,i) - 1
                demMS = demMS + 1;
                Mangi(dem2) = MangMS(i);
                dem2 = dem2 + 1;
            end
                                        
            demML = 0;
        
    end
    if demMS > 0
        MtrKLJ1 = TimMtrKLJ_2(demMS,Mangi,Mangj,n,t);
        MtrKLJ = [MtrKLJ; MtrKLJ1];
    end
    Mangi = 0;
    Mangj = 0;
    demMS = 0;
    t = t - 2;
    p = p + 1;
    q = q - 1;
end

MtrKLJ(1,:) = [];
end
    