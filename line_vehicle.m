function [] = line_vehicle(x1,y1,x2,y2)
w=1.86;
h=4;
%x1 y1 为直行车四个角的坐标为 p1 p2 p3 p4
p1=[x1-h,y1+w/2];
p2=[x1,y1+w/2];
p4=[x1-h,y1-w/2];
p3=[x1,y1-w/2];
line([p1(1) p2(1)],[p1(2) p2(2)],'color', [0 1 0],'LineWidth',2);
line([p2(1) p3(1)],[p2(2) p3(2)],'color', [0 1 0],'LineWidth',2);
line([p3(1) p4(1)],[p3(2) p4(2)],'color', [0 1 0],'LineWidth',2);
line([p4(1) p1(1)],[p4(2) p1(2)],'color', [0 1 0],'LineWidth',2);

end

