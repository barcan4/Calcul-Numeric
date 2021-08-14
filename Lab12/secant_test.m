# lab12 p3
f = @(x) x^3 - x^2 - 1;

# x = [1 2]
x0 = 1;
x1 = 2;

[x i] = secant(f, x0, x1, err=1e-12)


fzero(f, [a,b])