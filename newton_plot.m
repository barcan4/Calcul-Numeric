nodes = [1,2,3,4,5];
values = [22,23,25,30,28];
clc; hold on;
plot(nodes,values,'o','markerfacecolor','red');

X = linspace(1,5,1000);

plot(X, newtonForm(nodes,values,X));