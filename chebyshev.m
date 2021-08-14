function chebyshev(n)
  clf;
  hold on;
  T = @(n) @(t) cos(n*acos(t));
  t = linspace(-1,1,1000);
  for i=1:n
    plot(t,T(i)(t));
  endfor
endfunction