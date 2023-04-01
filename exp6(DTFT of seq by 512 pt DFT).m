clc;
clear ;
close all;

N =16;
M=512;
n = 0:N-1 ;
r = 3;

x=cos(2*pi*r*n/N);
subplot(121);
plot(n,x);
xlabel('n');
ylabel('x');
title('original sequence');


U=fft(x,M);
t=0:1:M-1;
subplot(122);
plot(t/512, abs(U));
xlabel('t');
ylabel('U');
title('magnitude of DFT');