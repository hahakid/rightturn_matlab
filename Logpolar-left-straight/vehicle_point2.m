function [xlist,ylist] = vehicle_point2(o,L,r,theta)
% L=2������ȣ�rΪ��ǰ����ת�뾶��thetaΪ��ת�Ƕ�
%oΪ��תԲ��
% p3 p4
% p1 p2

delta_x=r*cos(theta);
delta_y=r*sin(theta);
head_x=o(1)-delta_x;
head_y=o(2)-delta_y;

w=2;
l=4;
p1=[-3*L/2-w/2,2*L];
p2=[-3*L/2+w/2,2*L];
p3=[-3*L/2-w/2,2*L+l];
p4=[-3*L/2+w/2,2*L+l];
xlist=[p1(1),p2(1),p3(1),p4(1),head_x];
ylist=[p1(2),p2(2),p3(2),p4(2),head_y];
end

