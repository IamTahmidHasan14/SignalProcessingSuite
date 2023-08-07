clc;
N=100;
n=1:100;
x=mod(n,5)-11;

subplot(4,1,1);
stem(x);
title('x');

y1=0.5*x(n)+0.25*delay(x,1);
subplot(4,1,2);
stem(y1);
title('y1');

x_flip=zeros([1,100]);
for i=1:100
    x_flip = x(mod(-n,100)+1);
end

y2=x.^2 + x_flip;
subplot(4,1,3);
stem(y2);
title('y2');

y3=x.^2 + 2*advance(x,5) + delay(x,3);
subplot(4,1,4);
stem(y3);
title('y3');
