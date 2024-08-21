function measure(I,d,num)

global fm_deg;
param1 = ['ACMO', 'BREN', 'CURV', 'GDER','GLVA', 'GLLV', 'GLVN', 'GRAS', 'HELM','HISE','HISR', 'LAPE','LAPD','LAPM','LAPV','TENG','TENV','VOLA','WAVR','WAVS','WAVV'];
j=1;
if d==2
    N=10*(num-1)+1;
elseif d==5
    N=10*(num-1)+2;
elseif d==10
    N=10*(num-1)+3;
elseif d==15
    N=10*(num-1)+4;
elseif d==20
    N=10*(num-1)+5;
elseif d==25
    N=10*(num-1)+6;
elseif d==30
    N=10*(num-1)+7;
elseif d==35
    N=10*(num-1)+8;
elseif d==40
    N=10*(num-1)+9;
elseif d==50
    N=10*(num-1)+10;
end
[m,n] = size(I);
for i=1:4:84
    param = param1(i:i+3);
    fm_deg(j,N) = fmeasure(I, param, [1 1 m n]);
    j=j+1;
end
save fm_deg;
end