function [] = lines_vehicle(x,y)
    %极对数化
% line([x(1) x(3)],[y(1) y(3)],'color', [0 1 0],'LineWidth',2);
lp_x=linspace(x(1),x(3),100);
lp_y=linspace(y(1),y(3),100);
[lp_x,lp_y]=trans(lp_x,lp_y,1.07);
plot(lp_x,lp_y,'-','LineWidth',2,'Color',[0 1 0]);
% line([x(1) x(2)],[y(1) y(2)],'color', [0 1 0],'LineWidth',10);
lp_x=linspace(x(1),x(2),100);
lp_y=linspace(y(1),y(2),100);
[lp_x,lp_y]=trans(lp_x,lp_y,1.07);
plot(lp_x,lp_y,'-','LineWidth',10,'Color',[0 1 0]);
% line([x(2) x(4)],[y(2) y(4)],'color', [0 1 0],'LineWidth',2);
lp_x=linspace(x(2),x(4),100);
lp_y=linspace(y(2),y(4),100);
[lp_x,lp_y]=trans(lp_x,lp_y,1.07);
plot(lp_x,lp_y,'-','LineWidth',2,'Color',[0 1 0]);
% line([x(3) x(4)],[y(3) y(4)],'color', [0 1 0],'LineWidth',2);
lp_x=linspace(x(3),x(4),100);
lp_y=linspace(y(3),y(4),100);
[lp_x,lp_y]=trans(lp_x,lp_y,1.07);
plot(lp_x,lp_y,'-','LineWidth',2,'Color',[0 1 0]);
end

