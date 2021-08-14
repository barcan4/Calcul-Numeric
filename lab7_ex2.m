#Temperature
nodes = [0 10 20 30 40 60 80 100];
#Pressure
values = [0.0061 0.0123 0.0234 0.0424 0.0738 0.1992 0.4736 1.0133];

#poly1 = zeros(2);
#poly2 = zeros(3);

poly1 = polyfit(nodes, values, 2)
poly2 = polyfit(nodes, values, 6)

res1 = polyval(poly1, 45)
res2 = polyval(poly2, 45)



clf; hold on;