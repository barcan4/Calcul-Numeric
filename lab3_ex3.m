f = @(x) (1+cos(pi*x))./(1+x);

clc; hold on;

nodes = linspace(0,10,21);
values = f(nodes);

fplot(f,[0,10]);
plot(nodes,values,'o','markerfacecolor','red');

X = linspace(0,10,1000);
plot(X, lagrange_barycentric(nodes,values,X));