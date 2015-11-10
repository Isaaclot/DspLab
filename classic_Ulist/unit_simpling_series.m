clear;

n=1:50;
x=zeros(1,50);
x(1)=1;
close all; 

subplot(4,1,1);
stem(x);
title('Unit sample sequence');

%fourier
subplot(4,1,2);
Xf=fftshift(fft(x));
stem(Xf);
title('Fourier');


k=-25:25;
X=x*(exp(-j*pi/25)).^(n'*k);
magX=abs(X); 
subplot(4,1,3);
stem(magX);
title('Sample sequence spectrum amplitude units'); 

angX=angle(X); 
subplot(4,1,4);stem(angX) ;
title ('Phase spectrum unit sample sequence') 

