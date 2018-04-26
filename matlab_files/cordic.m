function [x,y]=cordic(x0,y0,theta)
    n=16;
    x=(floor(x0*(2^n)));
    y=(floor(y0*(2^n)));
    z=(floor(theta*(2^n)));
    A=1;
    temp=0:15;
    pow_2=2.^(-temp);
    tanarray=floor(atan(pow_2)*(2^n));
    for i=0:15
        x_old=x;
        if(z>0)
            x=x-floor((y*(2^(-i))));
            y=y+floor(x_old*(2^(-i)));
            z=z-tanarray(i+1);
        else
            x=x+floor(y*(2^(-i)));
            y=y-floor(x_old*(2^(-i)));
            z=z+tanarray(i+1);    
        end   
        A=A*(sqrt(1+2^(-2*i)));
    end
    x=x/(A*(2^n))
    y=y/(A*(2^n))
end