function [] = lines_vehicle(x,y)
base=1.07;
hold on;

lp_x=linspace(x(1),x(3),20);
lp_y=linspace(y(1),y(3),20);
[lp_x,lp_y]=trans(lp_x,lp_y,base);
plot(lp_x,lp_y,'-','LineWidth',2,'Color',[0 1 0]);
lp_x=linspace(x(1),x(2),20);
lp_y=linspace(y(1),y(2),20);
[lp_x,lp_y]=trans(lp_x,lp_y,base);
plot(lp_x,lp_y,'-','LineWidth',5,'Color',[0 1 0]);
lp_x=linspace(x(2),x(4),20);
lp_y=linspace(y(2),y(4),20);
[lp_x,lp_y]=trans(lp_x,lp_y,base);
plot(lp_x,lp_y,'-','LineWidth',2,'Color',[0 1 0]);
lp_x=linspace(x(3),x(4),20);
lp_y=linspace(y(3),y(4),20);
[lp_x,lp_y]=trans(lp_x,lp_y,base);
plot(lp_x,lp_y,'-','LineWidth',2,'Color',[0 1 0]);
%line([x(1) x(3)],[y(1) y(3)],'color', [0 1 0],'LineWidth',2);
%line([x(1) x(2)],[y(1) y(2)],'color', [0 1 0],'LineWidth',10);
%line([x(2) x(4)],[y(2) y(4)],'color', [0 1 0],'LineWidth',2);
%line([x(3) x(4)],[y(3) y(4)],'color', [0 1 0],'LineWidth',2);

end

