function [xlist,ylist] = vehicle_point(L,m)
% p3 p4
% p1 p2
w=2;
l=4;
p1=[-3*L/2-w/2,2*L-m];
p2=[-3*L/2+w/2,2*L-m];
p3=[-3*L/2-w/2,2*L+l-m];
p4=[-3*L/2+w/2,2*L+l-m];
xlist=[p1(1),p2(1),p3(1),p4(1)];
ylist=[p1(2),p2(2),p3(2),p4(2)];
end

