clc
clear all

MangPL = input('Nhap phan lop vao','s');
sddt = MangPL;
MangPL = uint16(MangPL);
%class(MangPL)
MangPL = double(MangPL);
j=length(MangPL);

%chuyen doi
for a1 = 1:j
    switch MangPL(a1)
        case 115
            MangPL(a1) = 0;continue;
        case 112
            MangPL(a1) = 1;continue;
        case 100
            MangPL(a1) = 2;continue;
        case 102
            MangPL(a1) = 3;continue;
        case 103
            MangPL(a1) = 4;continue;
        case 104
            MangPL(a1) = 5;continue;
        case 105
            MangPL(a1) = 6;continue;
        case 106
            MangPL(a1) = 7;continue;
        case 107
            MangPL(a1) = 8;continue;
    end
end
MangPL

%L
a1 = 1;
L = sum(MangPL);
while L >= 0
    MangL(a1) = L;
    a1 = a1+1;
    L = L-1;
end
MangL

%S
a2 = 1;
S = length(MangPL)*0.5;
while S >= 0
    MangS(a2) = S;
    a2 = a2+1;
    S = S-1;
end
MangS

%J
i = 1;
ChanLe = 0;
a = mod(length(MangPL),2);
if (a ~= 0)
    ChanLe = 0.5;
end

for i1 = max(MangL):-1:0
    for i2 = ChanLe:max(MangS)
        J = i1 + i2;
        if i1 == i2
            X = i2*2 +1;
            while X > 0
                  MtrKLJ(i,1) = i2*2 +1;
                  MtrKLJ(i,2) = i1;
                  MtrKLJ(i,3) = J;
                  J = J-1;  
                  i = i+1;
                  X = X-1;
            end
        elseif i1 > i2
            X = i2*2 +1;
            while X > 0
                  MtrKLJ(i,1) = i2*2 +1;
                  MtrKLJ(i,2) = i1;
                  MtrKLJ(i,3) = J;
                  J = J-1;  
                  i = i+1;
                  X = X-1;
            end
        elseif i1 < i2
            L = i1*2 +1;
            while L > 0
                  MtrKLJ(i,1) = i2*2+1;
                  MtrKLJ(i,2) = i1;
                  MtrKLJ(i,3) = J;
                  J = J-1;  
                  i = i+1;
                  L = L-1;
            end
        end
    end
end
MtrKLJ
[m,n] = size(MtrKLJ)


% tim X5, Y5 va X3, Y3
j = MtrKLJ(m,2);
tong = 0;
y3 = 0;
b3 = 1;
dem = 0;

for b1 = m:-1:1
    
    j1 = MtrKLJ(b1,2);
    if j == j1
        
        tong = tong + 40;
        y3 = y3 + tong;
        dem = dem + 1;
    else 
       
        tong = tong + 20 + 50;
        j = j1;
        
        X3(1,b3) = 25;
        X3(2,b3) = 30;
        Y3(1,b3) = y3/dem;
        Y3(2,b3) = y3/dem;
        b3 = b3+1;
        dem = 1;
        y3 = tong;

    end
        X5(1,b1) = 35;
        X5(2,b1) = 45;
        Y5(1,b1) = tong;
        Y5(2,b1) = tong;
        
end
X3(1,b3) = 25;
X3(2,b3) = 30;
Y3(1,b3) = y3/dem;
Y3(2,b3) = y3/dem;

% tim X1, Y1
X1=[15; 20];
Y1=[max(Y5(:))/2; max(Y5(:))/2];

% tim X2, Y2
[mx3,nx3] = size(X3);
for b1 = 1:1:nx3
    X2(1,b1) = 20;
    X2(2,b1) = X3(1,b1);
    Y2(1,b1) = max(Y5(:))/2;
    Y2(2,b1) = Y3(1,b1);
end
   
% tim X4, Y4
[mx5,nx5] = size(X5);
i = 1;
j = MtrKLJ(nx5,2);
tam = nx5;
for b2 = 1:1:nx3
    for b1 = nx5:-1:1
        
        j1 = MtrKLJ(b1,2);
        if j == j1
            X4(1,i) = X3(2,b2);
            X4(2,i) = X5(1,b1);
            Y4(1,i) = Y3(2,b2);
            Y4(2,i) = Y5(1,b1);
            i = i+1;
       
        else
            nx5 = tam;
            nx5 = nx5 -i +1;
            j = j1;
            break;
        end
    end
    
end

plot(X1, Y1,'-k','linewidth',2);
hold on
plot(X2, Y2,'--k','linewidth',0.5);
hold on
plot(X3, Y3,'-k','linewidth',2);
hold on

plot(X5, Y5,'-k','linewidth',2);
hold on
plot(X4, Y4,'--k','linewidth',0.5);
hold on
axis([0 200 0 4000]);
grid on

for b1 = m:-1:1  
     l = MtrKLJ(b1,2);
     switch l
         case 0
         l = 'S';
         case 1
         l = 'P';
         case 2
         l = 'D'; 
         case 3
         l = 'F';
         case 4
         l = 'G';
         case 5
         l = 'H'; 
         case 6
         l = 'I';
         case 7
         l = 'J';
         case 8
         l = 'K';
         otherwise 
         l = 'null';
     end
     mangl(b1) = l;
 end
 mangl;

% set text cho cac muc
for b1 = m:-1:1
    k = num2str(MtrKLJ(b1,1));
    j = num2str(MtrKLJ(b1,3));
    l = mangl(b1);
    d = ['^{',k,'}',l,'_{',j,'}'];
    d = char(d);
    if mod(b1,2) == 0
        text(X5(2,b1)+0.8, Y5(2,b1), d, 'FontSize', 8);
    else
        text(X5(2,b1)+0.8, Y5(2,b1), d, 'FontSize', 8);
    end
end

text(17.5, max(Y5(:))/2 +20, sddt);



