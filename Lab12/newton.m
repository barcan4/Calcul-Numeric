function [x i] = newton(f, df, x0, err = 1e-12, max_iterations = 100)
  for i=1:max_iterations
    x = x0 - f(x0) / df(x0);
    if abs(x - x0) < err || abs(f(x)) < err
      return
    endif
    x0 = x;
  endfor
endfunction