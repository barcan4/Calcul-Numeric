f = @(E) E - 0.8 * sin(E) - 2 * pi / 10;
df = @(E) 1 - 0.8 * cos(E);
E0 = 1;

[x i] = newton(f, df, x0, err = 1e-12, max_iterations = 6)