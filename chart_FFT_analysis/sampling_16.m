%sampling_16 points

clear;
N=16;
f1=6500;
f2=7000;
f3=9000;

fs=32000;

ws=2*pi*fs;

T=1/fs;
n=0:N-1;
x=cos(2*pi*f1*n*T)+5*cos(2*pi*f2*n*T)+cos(2*pi*f3*n*T);
y=(1:N);
z=fft(y,N);
w=((0:N-1)*ws/N)/(2*pi);
subplot(2,1,1);
plot(w,abs(z));
ylabel('幅度特性曲线');xlabel('采样点为16的16点FFT');
y2=[x(1:N) zeros(1,L-N)];
z2=fft(y2,L);
w=((0:L-1)*ws/L)/(2*pi);
subplot(2,1,2);
plot(w,abs(z2));
ylabel('幅度特性曲线');xlabl('采样点为16补零到256后的256点FFT');