%f = @(x) exp(10*x.*(x-1)).*sin(12*pi*x);
%fplot(f, [0,1])

x=@(a,b) @(t) (a+b)*cos(t)-b*cos((a/b+1)*t)
y=@(a,b) @(t) (a+b)*sin(t)-b*sin((a/b+1)*t)
t=linspace(0,10*pi,1000)
a=7;b=2;
plot(x(a,b)(t),y(a,b)(t))

