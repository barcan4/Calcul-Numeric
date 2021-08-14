f = @(x) x^3 - x^2 - 1;
df = @(x) 3*x^2 - 2*x;

# x = [1 2]
x0 = 1;
x1 = 2;

[x i] = newton(f, df, x0, err=1e-12)


fzero(f, x0)