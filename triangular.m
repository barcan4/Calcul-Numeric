function X = triangular(A, b)
  % A - n * n matrix
  % b - column matrix(n)
  % the linear system is A * x = B
  n = length(b);
  x = zeros(n, 1);
  for i = n:-1:1 %lines
    x(i) = (b(i) - A(i, i+1:n) * x(i+1:n))/ A(i,i);
  endfor
  X = x;
endfunction