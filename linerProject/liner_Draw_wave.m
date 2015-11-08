%Draw timer wave sharp
clear;

n=0:1:10;
x=(0.5).^n;
title('Wave');
stem(n,x,'r');
xlabel('n');
ylabel('x(n)');
grid on;