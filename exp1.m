clc
clear
len = input('enter the length of the sequence:');
seq = -len:len;
y1=zeros(1,length(seq)); 
y1(len+1)=1;
subplot(241);
stem(seq,y1);
xlabel('Time');
ylabel('Magnitude');
title('Unit Impulse Function');

y2=ones(1,length(seq));
y2(1:len)=0;
subplot(242);
stem(seq,y2);
xlabel('Time');
ylabel('Magnitude');
title('Unit Step Function');

a=input("Enter the amp for sine function:");
y3=a*sin(seq);
subplot(243);
stem(seq,y3);
xlabel('Time');
ylabel('Magnitude');
title('Sine');


%Exponential Function
pos_seq = 0 : 1 : len ;
a = input('Enter value of a : ' );
k = input('Enter value of k : ' );
y4 = k*a.^pos_seq;
subplot(244);
stem(pos_seq,y4)
ylabel('Mag');
xlabel('Time');
title('Exponential Sequence');

impulse=(seq==0);
unit_step=(seq>=0);
ramp=(seq.*unit_step);
subplot(245);
stem(seq,ramp);
xlabel('Time');
ylabel('Magnitude');
title('Unit Ramp');

y5=sign(seq);
subplot(246);
stem(seq,y5);
xlabel('Time');
ylabel('Magnitude');
title('Signum Function');

b=input("Enter amp of the complex number");
c=input("Enter the real part:");
d=input("Enter the img part:");

%Complex Function
A = input('Enter value of A : ' );
B = input('Enter value of B : ' );
y7 = k * (A+1i*B).^ pos_seq ;
subplot(247);
stem(pos_seq,real(y7));
ylabel('y7');
xlabel('n');
title('Real Complex Sequence');

subplot(248);
axis([-150 15 0.01 0.05]);
stem(pos_seq,imag(y7));
ylabel('y8');
xlabel('n');
title('Imaginary Complex Sequence');



