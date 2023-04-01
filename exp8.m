clc
clear
close all;
fp=input("enter passbnd freq");
fs=input("enter stopbnd freq");
Ap=input("passbnd attentn");
As=input("stopbnd attetn");
wp=2*pi*fp;
ws=2*pi*fs;
[N,Wn] = cheb1ord(wp,ws,Ap,As,'s');
fn = Wn/(2*pi);
[num,den] = cheby1(N,Ap,wp,'s');
omega =  0:200:12000*pi ;  %till 6khz..just to show stop band 2pi*6000Hz
h=freqs(num,den,omega);
gain = 20*log10(abs(h));

plot(omega/(2*pi), gain);
xlabel("frequency");
ylabel("Gain");
title("Chebyshev Filter");