function taylor_pol(n)
  clf;
  hold on;
  t = linspace(-1,3,1000);
  T0 = @(x) ones(size(x));
  for i=1:n
    T0 = @(x) T0(x) + (x.^i)/factorial(i);
    plot(t,T0(t));
  endfor
endfunction