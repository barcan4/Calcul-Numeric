function res = repeatedSimpson(f,a,b,n)
  h = (b - a) / n;
  x = a+h:h:b-h;
  #i = 2:n-1;
  xmid = a+h/2:h:b-h/2;
  res = (f(a) + f(b) + 4 * sum(f(xmid)) + 2 * sum(f(x))) * h/6;
endfunction