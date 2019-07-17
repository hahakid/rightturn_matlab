function [] = ego_road_right(x,y,theta)
%xy为道路的点
%vx vy为车的点（1，2）是车头
base=1.07;
    hold on;
    r3=7.5*3/2;%norm([x(29),y(29)]-[x(19)-3.75,y(19)-3.75]);
    arcc([x(26),y(26)],0,pi/2+theta,r3,[0.3 0 0.9]);

    r4=7.5*2;%norm([x(30),y(30)]-[x(23),y(23)]);
    arcc([x(26),y(26)],0,pi/2+theta,r4,[0.3 0 0.9]);
    
    lp_x=linspace(x(7),x(39),20);
    lp_y=linspace(y(7),y(39),20);
    [lp_x,lp_y]=trans(lp_x,lp_y,base);
    plot(lp_x,lp_y,':','LineWidth',2,'Color',[0.3 0 0.9]);  
    %line([x(7) x(39)],[y(7) y(39)],'color',[0.3 0 0.9],'LineWidth',3,'LineStyle',':');
    lp_x=linspace(x(14),x(40),20);
    lp_y=linspace(y(14),y(40),20);
    [lp_x,lp_y]=trans(lp_x,lp_y,base);
    plot(lp_x,lp_y,':','LineWidth',2,'Color',[0.3 0 0.9]);  
    %line([x(14) x(40)],[y(14) y(40)],'color',[0.3 0 0.9],'LineWidth',3,'LineStyle',':');

end

