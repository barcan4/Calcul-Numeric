T = @(n) @(t) cos(n*acos(t));

subplot(3,1,1)
fplot(T(1),[-1,1])
subplot(3,1,2)
fplot(T(2),[-1,1])
subplot(3,1,3)
fplot(T(3),[-1,1])