function L = newtonForm(nodes, values, X)
  
  table = divided_diff(nodes, values);
  coefs = table(1,:);
  L = X;
  for i=1:length(X)
    L(i) = coefs(1);
    product = 1;
    for j=2:length(coefs)
      product = product * (X(i) - nodes(j-1));
      L(i) = L(i) + product * coefs(j);
    endfor
  endfor
endfunction