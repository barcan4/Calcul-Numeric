function g=recursive_g(n)
  if n==1
    g = 1 + 1/(1+1);
  else
    g = 1+1/(1+recursive_g(n-1))
  endif
endfunction