%convolution
clc;
h = [1/5 1/5 1/5 1/5 1/5];
N = 100;
n = 1:N;
x = cos((8*pi*n/N) + rand([1,N]));
subplot(2,1,1);
plot(x);
subplot(2,1,2);
plot(convolution(x,h));