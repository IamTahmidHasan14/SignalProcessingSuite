function y=advance(x,k)
    [M,N]=size(x);
    y=zeros([1,N]);
    for i = 1:N
        if i+k<N
            y(i)=0;
        else
            y(i)=x(i+k);
        end
    end
