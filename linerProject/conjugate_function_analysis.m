%Conjugate function analysis
clear;

n=-5:5;
a=0.5;
xen=a*[a.^n+a.^(-n)];
xon=a*[a.^n-a.^(-n)];


stem(n,xen,'r');
title('Timer Quote of xen');
xlabel('n');
ylabel('xen');
grid on;

figure
stem(n,xon,'y');
title('Timer Quote of xon');
xlabel('n');
ylabel('xon');
grid on;
