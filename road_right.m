function [] = road_right(x,y)
    %x1=(x(18)+x(22))/2;
    %y1=(y(18)+y(22))/2;
    
    %x2=(x(19)+x(23))/2;
    %y2=(y(19)+y(23))/2;

    line([x(18) x(19)],[y(18) y(19)],'color',[0 0.9 0],'LineWidth',3,'LineStyle',':');
    line([x(22) x(23)],[y(22) y(23)],'color',[0 0.9 0],'LineWidth',3,'LineStyle',':');
    %hold on;
    
    %r1=norm([x(9),y(9)]-[x(11),y(11)]);
    %r2=norm([x(8),y(8)]-[x(11),y(11)]);
    %arcc([x(11),y(11)],pi,3*pi/2,r1);
    %arcc([x(11),y(11)],pi,3*pi/2,r2);
end

