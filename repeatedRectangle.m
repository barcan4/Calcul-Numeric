function res = repeatedRectangle(f,a,b,n)
   h = (b-a)/n;
   midpoints = a+h/2:h:b-h/2;
   res = sum(f(midpoints) * h);
endfunction