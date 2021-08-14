function res = repeatedTrapezoid(f,a,b,n)
  h = (b - a) / n;
  x = a+h:h:b-h;
  res = (f(a) + f(b) + 2 * sum(f(x))) * h/2;
endfunction