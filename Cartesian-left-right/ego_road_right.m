function [] = ego_road_right(x,y,theta,L)
%xy为道路的点
%vx vy为车的点（1，2）是车头
    hold on;
    r3=L;%norm([x(29),y(29)]-[x(19)-3.75,y(19)-3.75]);
    arcc([x(26),y(26)],0,pi/2+theta,r3,[0.3 0 0.9]);

    r4=L*3/2;%norm([x(30),y(30)]-[x(23),y(23)]);
    arcc([x(26),y(26)],0,pi/2+theta,r4,[0.3 0 0.9]);
%     x1=x+L/2*sin(theta);
%     y1=x-L/2*cos(theta);
%for n=1:40
%    x(n)=x(n)+L/2*sin(theta);
%    y(n)=y(n)-L/2*cos(theta);
%end
    line([x(14) x(41)],[y(14) y(41)],'color',[0.3 0 0.9],'LineWidth',3,'LineStyle',':');
    line([x(18) x(42)],[y(18) y(42)],'color',[0.3 0 0.9],'LineWidth',3,'LineStyle',':');

end

