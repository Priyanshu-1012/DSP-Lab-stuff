clc;
clear ;
close all;

P = input('length of DFT');
Q = input('length of IDFT');

p=1:P;
UK = (p-1)/P;

uk = ifft(UK,Q);

subplot(311);
stem(p-1,UK);
xlabel("frequency");
ylabel("amplitude");
title("DFT sample");

x =0:1:Q-1;

subplot(312);
stem(x,real(uk));
xlabel("time");
ylabel("real magnitude");
title("real sequence ");


subplot(313);
stem(x,imag(uk));
xlabel("tme");
ylabel("img magnitude");
title("imaginary sequence");