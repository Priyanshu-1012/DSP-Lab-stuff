clc
clear
close all;
fp=input("enter passbnd freq");
fs=input("enter stopbnd freq");
Ap=input("passbnd attentn");
As=input("stopbnd attetn");
wp=2*pi*fp;
ws=2*pi*fs;
[N,Wn] = buttord(wp,ws,Ap,As,'s');
fn = Wn/(2*pi);
[num,den] = butter(N,Wn,'s');
omega =  0:200:12000*pi ;  %till 6khz..just to show stop band 2pi*6000Hz
h=freqs(num,den,omega);
gain = 20*log10(abs(h));

fs=2*fp; %sampling freq greater than Nyquist rate

[numz,denz]=impinvar(num,den,fs);
[hz,omega2]=freqz(numz,denz,512,fs);
gain2=20*log10(abs(hz));
plot(omega2, gain2);
title('Butterworth Low-Pass Filter Response');
xlabel('Gain');
ylabel('freq');
