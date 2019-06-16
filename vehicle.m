function [] = vehicle(x1,y1,x2,y2,c)
x3=(9*x1+x2)/10;
y3=(9*y1+y2)/10;

line([x1 x3],[y1 y3],'color',c,'LineWidth',15);

end

