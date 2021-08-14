# lab12 p4
f = @(x) (x - 2)^2 - log(x);

a = 1;
b = 2;

[c, i] = bisection(f, a, b)

fzero(f, [a,b])