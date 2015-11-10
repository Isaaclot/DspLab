clear;

n=1:20;
x=sign(sign(10-n)+1);
close all;

subplot(4,1,1);
%Time-Domain waveform
stem(x);
title('Time-Domain waveform');
xlabel('Time(n)');
ylabel('widthx(n)');

subplot(4,1,2);
Xf=fftshift(fft(x));
stem(Xf);
title('Fourier');


k=-25:25;
temp=(-pi*j)/25;
X=x*((exp(temp)).^(n'*k));
magX=abs(X);

subplot(4,1,3);
stem(magX);
title('Amplitude spectrum rectangular sequence');

angX=angle(X);
subplot(4,1,4);
stem(angX);
title('Phase spectrum rectangular sequence');


