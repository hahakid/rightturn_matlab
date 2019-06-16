function [] = lines_vehicle(x,y,c)

line([x(1) x(2)],[y(1) y(2)],'color', c,'LineWidth',2);
line([x(2),x(3)],[y(2) y(3)],'color', c,'LineWidth',2);
line([x(3) x(4)],[y(3) y(4)],'color', c,'LineWidth',2);
line([x(4) x(1)],[y(4) y(1)],'color', c,'LineWidth',2);

end

