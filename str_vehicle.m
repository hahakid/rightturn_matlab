function [x_list,y_list] = str_vehicle(x1,y1,x2,y2)
%vehicle 
w=1.8;
h=4;

%p1=[x-h,y+w/2];
%p2=[x,y+w/2];
%p4=[x-h,y-w/2];
%p3=[x,y-w/2];
p1=[x1,y1];
p2=[x2,y2];
p4=[(x1+x3)/10,(y1+y3)/10];
p3=[(x2+x4)/10,(y2+y4)/10];

x_list=[p1(1),p2(1),p3(1),p4(1)];
y_list=[p1(2),p2(2),p3(2),p4(2)];


end

