A = [10 7 8 7; 7 5 6 5; 8 6 10 9; 7 5 9 10];
b = [32; 23; 33; 31];
X = triangular(triu(A), b);
%triu(A);
triu(A) * X