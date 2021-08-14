function table = divided_diff(nodes, values)
  table = nan(length(values));
  table(:,1) = values;
  for col=2:length(values)
    for k = 1:length(values)-col+1
      table(k,col) = (table(k+1,col-1) - table(k,col-1))/...
        (nodes(k+col-1) - nodes(k));
    endfor
  endfor
endfunction