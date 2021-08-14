function taylor_pol_str(n)
  clf;
  hold on;
  t = linspace(-1,3,1000);
  T0 = @(x) ones(size(x));
  L = {'exp'};
  plot(t, exp(t));
  for i=1:n
    T0 = @(x) T0(x) + (x.^i)/factorial(i);
    L{end+1} = ['T' num2str(i)];
    plot(t,T0(t));
  endfor
  legend(L);
endfunction