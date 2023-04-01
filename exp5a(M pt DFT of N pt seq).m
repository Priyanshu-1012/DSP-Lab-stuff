clc;
clear;
close all;

N = input('Enter length of sequence:');
M = input('Enter length of DFT:');

u = [ones(1, N)];
U = fft(u, M);

%time sequence from 0 to N-1
t = 0:1:N-1;

subplot(321);
stem(t,u);
xlabel("time");
ylabel("Amplitude")
title("Original sequence");

m = 0:1:M-1;

subplot(322);
stem(m, abs(U));
xlabel("frequency");
ylabel("Magnitude");
title("Magnitude of DFT");

subplot(323);
stem(m, angle(U));
xlabel("frequency");
ylabel("phase");
title ("Phase of DFT");