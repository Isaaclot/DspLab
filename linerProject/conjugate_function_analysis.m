%Conjugate function analysis
clear;

n=-5:5;
a=0.5;
xen=a*[a.^n+a.^(-n)];
xon=a*[a.^n-a.^(-n)];

subplot(2,1,1);
stem(n,xen,'r');
title('Timer Quote of xen');
xlabel('n');
ylabel('xen');
grid on;

subplot(2,1,2);
stem(n,xon,'g');
title('Timer Quote of xon');
xlabel('n');
ylabel('xon');
grid on;
