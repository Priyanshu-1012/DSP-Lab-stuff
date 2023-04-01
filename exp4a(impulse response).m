clc
close all
clear 

n = input('Enter length of sequence of transfer fxn:');
m = 0 : n-1;

%Impulse response
l1=length(m);
p = input('Enter coeff of numerator of transfer func:');

l2=length(m);
q = input('Enter coeff of denominator of transfer func:');

num = poly2str(p, 's');
num=['(' num ')'];
denom = poly2str(q, 's');
denom=['(' denom ')'];
eqn = [num '/' denom];
disp(['Transfer function T(s)= ' eqn])


x = [1,zeros(1,length(m)-1)];

y = filter(p,q,x);

k = 0:length(m)-1;

disp(y);



subplot(2,2,1);
stem(k,y);
xlabel('n');
ylabel('h[n]');
title('Impulse response');

