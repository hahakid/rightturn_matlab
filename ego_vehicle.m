function [] = ego_vehicle(x,y)

%vehicle 
width=1.8;
height=4;

rectangle('Position',[x-width/2 y-height width height],'FaceColor',[0 0 1]);

end

