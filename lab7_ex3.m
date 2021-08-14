clf;
axis equal;axis([0 2 0 1]);
xticks(0:0.1:3);yticks(0:0.1:5);
grid on;hold on;
set(gca,"fontsize", 15)
[x,y]=ginput(1);
X=x;Y=y;
i=1;
while ~isempty([x,y])
  plot(x, y, '*', 'markersize', 10)
  text(x+0.02, y+0.02, num2str(i))
  [x,y]=ginput(1);
  X=[X x];Y=[Y y];
  i=i+1;
endwhile

coeffs = polyfit(X,Y,2);
p = @(x) polyval(coeffs, x);
fplot(p,[0,2]);