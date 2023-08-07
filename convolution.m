function y = convolution(x,h)
    [M_x,N_x] = size(x);
    [M_h,N_h] = size(h);
    Z = N_x+N_h-1;
    y = zeros ([1, Z]);
    for n=1:Z
        s=0;
        for k =1:N_x
            if n-k>=1 && n-k<=N_h
                s = s+x(k) * h(n-k);
            end
            y(n)=s;
        end
    end
end
