%define differential equation

clear;

%differ & input equation var
disp('Input var a');
b0=input('Please input a0:');
b1=input('Please input a1:');
b2=input('Please input a2:');
disp('Input var b');
a1=input('Please input b1:');
a2=input('Please input b1:');

a=[1,a1,12];
b=[b0,b1,b2];

n=-5:5;
xn=(0.5).^n;


xi=filtic(b,a,0);   %initilize input
yn=filter(b,a,xn,xi);   %losute

stem(n,yn,'.r');
grid on;
title('Result from xn inout wava');
xlabel('n');
ylabel('yn');

