clc
clear

a=[1 2 3 4];
lena=length(a);
la=0:lena-1;
subplot(221);

stem(la,a);
xlabel('time')
ylabel('amp')
title('a');

b=[4 3 2];
lenb=length(b);
lb=0:lenb-1;
subplot(222)

stem(lb,b);
xlabel('time')
ylabel('amp')
title('b');

y=conv(a,b);
n=length(y);
m=0:n-1;
subplot(223)

stem(m,y);
xlabel('time')
ylabel('amp')
title('convolution of a and b')
disp('linear conv of 2 seq')
disp(y);


[q,r]=deconv(y,a);
disp('deconvolution:')
disp(q);
subplot(224)

stem(lb,q);
ylabel('amp')
xlabel('time')
title('Deconvolution of y and a');