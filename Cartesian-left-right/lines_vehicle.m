function [] = lines_vehicle(x,y)

line([x(1) x(3)],[y(1) y(3)],'color', [0 1 0],'LineWidth',2);
line([x(1) x(2)],[y(1) y(2)],'color', [0 1 0],'LineWidth',10);
line([x(2) x(4)],[y(2) y(4)],'color', [0 1 0],'LineWidth',2);
line([x(3) x(4)],[y(3) y(4)],'color', [0 1 0],'LineWidth',2);

end

