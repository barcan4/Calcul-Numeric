function chebyshev_rec(n)
  clf; hold on;
  T0 = @(x) ones(size(x));
  T1 = @(x) x;

  t = linspace(-1,1,1000);
  for i=2:n
    T2 = @(x) 2*x.*T1(x) - T0(x);
    plot(t, T2(t));
    T0 = T1;
    T1 = T2;
  endfor
endfunction