function [] = straight_road_right(x,y,vx,vy)
%xyΪ��·�ĵ�
%vx vyΪ���ĵ㣨1��2���ǳ�ͷ


line([vx(1) x(37)],[vy(1) y(37)],'color',[0.5 0.9 0],'LineWidth',3,'LineStyle',':');
line([vx(2) x(38)],[vy(2) y(38)],'color',[0.5 0.9 0],'LineWidth',3,'LineStyle',':');

end

