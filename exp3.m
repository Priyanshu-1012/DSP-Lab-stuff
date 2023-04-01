clc 
clear
close all

seq1= -2:2;
x=[1 2 3 4 5];

subplot(221);
stem(seq1,x);
xlabel('T');
ylabel('x[n]');
title('Sample');

dly = input('enter the value of delay');
adv=input('enter the value of advance');

if (dly>0)
      m= seq1+dly;
      z=x;
      subplot(222);
      stem(m,z);
      
      xlabel('T');
      ylabel('x[n-T]');
      title('Delayed');
end

if (adv>0)
      p= seq1-adv;
      y=x;
      subplot(223);
      stem(p,y);
      
      xlabel('T');
      ylabel('x[n+T]');
      title('Advanced');
end

flip_a1= fliplr(x);
subplot(224);
stem(seq1,flip_a1);
xlabel('T');
ylabel('x[-n]');
title('Reversed');