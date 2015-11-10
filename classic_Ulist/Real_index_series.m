
clear;

n=0:20;
a=1.2;
x=a.^n;

subplot(4,1,1);
stem(n,x,'fill');
grid on;
title('Real index series');

subplot(4,1,2);
Xf=fft(x);
stem(n,Xf);
title('Fourier');


k=-10:10;
X=x*(exp(-j*pi/10)).^(n'*k);
magX=abs(X);
subplot(4,1,3);
stem(magX);
title('The amplitude spectrum of the real exponential sequence');  

angX=angle(X);
subplot(4,1,4);
stem(angX) ;
title ('Real exponential sequence of phase spectrum');