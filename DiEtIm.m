function I = DiEtIm(f, a, b, er)
  h = (a + b) / 2;
  I1 = repeatedSimpson(f, a, b, 1);
  I2 = repeatedSimpson(f, a, h, 1) + repeatedSimpson(f, h, b, 1);
  if abs(I1-I2) < 15 * er
    I = I2;
    return
  else
    I = DiEtIm(f, a, h, er / 2) + DiEtIm(f, h, b, er / 2);
  endif
endfunction