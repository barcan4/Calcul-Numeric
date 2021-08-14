function X = gaussElimination(A, b)
  n = length(b);
  A = [A b];
  
  for k = 1:n-1
    % look for line that starts with the max element
    [val, pos] = max(A(k:n-1,k));
    pos = pos + k - 1;
    if pos != k
      A([pos, k], k:end) = A([k, pos], k:end);
    endif
    for i = k+1:n
      m = A(i, k) / A(k, k);
      A(i, k:end) = A(i, k:end) - A(k, k:end) * m;
    endfor
  endfor
  
  b = A(:,end);
  A(:,end) = [];
  X = triangular(A, b);
endfunction