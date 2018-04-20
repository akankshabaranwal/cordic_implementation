function [x,y]=cordic(x0,y0,theta)
x=(floor(x0*1024));
y=(floor(y0*1024));
z=(floor(theta*1024));
A=1;
temp=0:15;
pow_2=2.^(-temp);
tanarray=floor(atan(pow_2)*1024);
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
x
y
x=x/(A*1024);
y=y/(A*1024);
end