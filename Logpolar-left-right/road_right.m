function [] = road_right(x,y,vx,vy,theta,L)
%xy为道路的点
%vx vy为车的点（1，2）是车头

xn=(-L/2)*cos(theta)-(2*L)*sin(theta)-5/4*L;
yn=(-L/2)*sin(theta)+(2*L)*cos(theta);%右转车在相对坐标系下的旋转中心
r1=L/2;
arcc([xn,yn],-pi/2+theta,3*theta,r1,[0.5 0.9 0]);
r2=L;
arcc([xn,yn],-pi/2+theta,3*theta,r2,[0.5 0.9 0]);
for n=1:40
    x(n)=x(n)+L/2*sin(theta);
    y(n)=y(n)-L/2*cos(theta);
end
% line([x(7) x(39)],[y(7) y(39)],'color',[0.5 0.9 0],'LineWidth',3,'LineStyle',':');
lp_x=linspace(x(7),x(39),100);
lp_y=linspace(y(7),y(39),100);
[lp_x,lp_y]=trans(lp_x,lp_y,1.07);
plot(lp_x,lp_y,':','LineWidth',3,'Color',[0.5 0.9 0]);
% line([x(14) x(40)],[y(14) y(40)],'color',[0.5 0.9 0],'LineWidth',3,'LineStyle',':');
lp_x=linspace(x(14),x(40),100);
lp_y=linspace(y(14),y(40),100);
[lp_x,lp_y]=trans(lp_x,lp_y,1.07);
plot(lp_x,lp_y,':','LineWidth',3,'Color',[0.5 0.9 0]);

end

