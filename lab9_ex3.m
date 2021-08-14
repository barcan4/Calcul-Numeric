f = @(x) (100 ./ x .^ 2) .* sin(10 ./ x);
a = 1;
b = 3;
err = 0.0001;

DiEtIm(f,a,b,err)
repeatedSimpson(f,a,b,50)
repeatedSimpson(f,a,b,100)