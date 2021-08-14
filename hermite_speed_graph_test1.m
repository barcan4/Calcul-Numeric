clf; 
nodes=[0 3 5 8 13];
values=[0  225  383  623  993];
der_values=[75  77   80   74   72];
t=linspace(0,13,1001);
 %police version
[distance,speed]=...
 Hermite_interp(nodes,values,der_values,t);
 %driver version
[distance2,speed2]=...
 pp_cubic_hermite(nodes,values,der_values,t);
%%%
subplot(2,2,1);hold on;axis square;grid on;
plot(t,distance,'b','LineWidth',3)
plot(t,distance2,'g','LineWidth',3)
plot(nodes,values,'or','MarkerSize',8,'MarkerFaceColor','r')
xlabel("time(h)",'fontweight','bold',"fontsize", 13);
ylabel("distance(km)",'fontweight','bold',"fontsize", 13);
%%%
subplot(2,2,2);hold on;axis square;grid on;
plot(t,speed,'b','LineWidth',3)
plot(t,speed2,'g','LineWidth',3)
plot(nodes,der_values,'or','MarkerSize',8,'MarkerFaceColor','r')
xlabel("time(h)",'fontweight','bold',"fontsize", 13);
ylabel("speed(km/h)",'fontweight','bold',"fontsize", 13);
%
subplot(2,2,[3,4]); hold on;grid on;
plot(distance,speed,'b','LineWidth',3)
plot(distance2,speed2,'g','LineWidth',3)
plot(values,der_values,'or','MarkerSize',8,'MarkerFaceColor','r')
xlabel("distance(km)",'fontweight','bold');
ylabel("speed(km/h)",'fontweight','bold');
%
set(gca,"fontsize", 15)