
clear;

n=0:20;
a=1.2;
x=a.^n;

subplot(311);
stem(n,x,'fill');
grid on;
title('Real index series');

k=-10:10;
X=x*(exp(-j*pi/10)).^(n'*k);
magX=abs(X);
subplot(312);
stem(magX);
title('The amplitude spectrum of the real exponential sequence');  

angX=angle(X);
subplot(313);
stem(angX) ;
title ('Real exponential sequence of phase spectrum');