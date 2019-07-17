function [] = straight_road_right(x,y,vx,vy)
%xy为道路的点
%vx vy为车的点（1，2）是车头

hold on;
base=1.07;
lp1_x=linspace(vx(1),x(37),20);
lp1_y=linspace(vy(1),y(37),20);
lp2_x=linspace(vx(2),x(38),20);
lp2_y=linspace(vy(2),y(38),20);

[lp1_x,lp1_y]=trans(lp1_x,lp1_y,base);
[lp2_x,lp2_y]=trans(lp2_x,lp2_y,base);
plot(lp1_x,lp1_y,'.','LineWidth',1,'Color',[0.5 0.9 0]);
plot(lp2_x,lp2_y,'.','LineWidth',1,'Color',[0.5 0.9 0]);
%line([vx(1) x(37)],[vy(1) y(37)],'color',[0.5 0.9 0],'LineWidth',3,'LineStyle',':');
%line([vx(2) x(38)],[vy(2) y(38)],'color',[0.5 0.9 0],'LineWidth',3,'LineStyle',':');

rectangle('Position',[lp1_x(1) lp1_x(2) ]);

end

