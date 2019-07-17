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
    %line([x(14) x(41)],[y(14) y(41)],'color',[0.3 0 0.9],'LineWidth',3,'LineStyle',':');
    lp_x=linspace(x(14),x(41),100);
    lp_y=linspace(y(14),y(41),100);
    [lp_x,lp_y]=trans(lp_x,lp_y,1.07);
    plot(lp_x,lp_y,':','LineWidth',3,'Color',[0.3 0 0.9]);
    %line([x(18) x(42)],[y(18) y(42)],'color',[0.3 0 0.9],'LineWidth',3,'LineStyle',':');
    lp_x=linspace(x(18),x(42),100);
    lp_y=linspace(y(18),y(42),100);
    [lp_x,lp_y]=trans(lp_x,lp_y,1.07);
    plot(lp_x,lp_y,':','LineWidth',3,'Color',[0.3 0 0.9]); 

    
    
%     %产生道路参考线的点
%     X1=linspace(x(14),x(41),100);
%     Y1=linspace(y(14),y(41),100);
%     X2=linspace(x(18),x(42),100);
%     Y2=linspace(y(18),y(42),100);
%     %极对数转化
%     [X3,Y3]=trans(X1,Y1,1.07);
%     [X4,Y4]=trans(X2,Y2,1.07);
%     %样条插值使平滑，画图
%     A3=X3(1):0.01:X3(100);
%     B3=spline(X3,Y3,A3);
%     plot(A3,B3);
%     A4=X4(1):0.001:X4(100);
%     B4=spline(X4,Y4,A4);
%     plot(A4,B4);
end

