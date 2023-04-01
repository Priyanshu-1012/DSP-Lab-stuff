clc
clear

n1=-2:5;
x=[1 2 3 4 5 6 7 8];
subplot(321);
stem (n1,x);
title('A');
xticks(min(n1):1:max(n1));

n2=0:3;
y=[-2 -1 1 -7];
subplot(322);
stem(n2,y);
title('B');
xticks(min(n2):1:max(n2));

n = min(min(n1), min(n2)):max(max(n1), max(n2));
z1=zeros(1,length(n));
z2=zeros(1,length(n));

z1((n>=min(n1))&(n<=max(n1)))=x();
z2((n>=min(n2))&(n<=max(n2)))=y();

sum=z1+z2;
mult=z1.*z2;
sub=z1-z2;

subplot(323);
stem(n,sum);
title('A + B');
xticks(min(n):1:max(n));

subplot(324);
stem(n,sub);
title('A - B');
xticks(min(n):1:max(n));

subplot(325);
stem(n,mult);
title('A * B');
xticks(min(n):1:max(n));
