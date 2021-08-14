#Time
#nodes = [1 2 3 4 5 6 7];
#Temperature
#values = [13 15 20 14 15 13 10];

function [a,b,E] = lab7_ex1(nodes, values)
  m = length(nodes) - 1;
  a = ((m + 1) * sum(nodes .* values) - sum(nodes) * sum(values))...
        / ((m + 1) * sum(nodes .* nodes) - sum(nodes) ^ 2);

  b = (sum(nodes .* nodes) * sum(values) - sum(nodes .* values) * sum(nodes))...
        / ((m + 1) * sum(nodes .* nodes) - sum(nodes) ^ 2);
        
  clf; hold on;
  plot(nodes, values, '*', 'markersize', 10);

  fi = @(x) (a * x + b);
  fplot(fi,[0,8]);
  fi(8);
  E = norm(values - fi(nodes)) ^ 2;
endfunction