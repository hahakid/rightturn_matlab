function [] = left_vehicle(x1,y1,x2,y2)

%vehicle 
w=1.6;
h=3;
%p1=[x-w/2,y+h];
%p2=[x+w/2,y+h];
%p4=[x-w/2,y];
%p3=[x+w/2,y];
%p1=[x1,y1];
%p2=[x2,y2];
%p4=[x-w/2,y];
%p3=[x+w/2,y];
line([x1 x2],[y1 y2],'color', [0 0 0],'LineWidth',2);

%x_list=[p1(1),p2(1),p3(1),p4(1)];
%y_list=[p1(2),p2(2),p3(2),p4(2)];
%rectangle('Position',[x-width/2 y width height],'FaceColor',[1 0 0]);

end

