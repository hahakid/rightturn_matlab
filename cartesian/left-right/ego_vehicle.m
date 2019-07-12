function [] = ego_vehicle(x,y)

%vehicle 
width=1.8;
height=4;
%scatter(x,y,30,'MarkerFaceColor','blue')
rectangle('Position',[x-width/2 y-height width height],'FaceColor',[0 0 1]);

end

