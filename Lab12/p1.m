f = @(x) x - cos(x);
df = @(x) 1 + sin(x);
x0 = pi/4;

[x i] = newton(f, df, x0, err = 1e-12)

fzero(f,x0)