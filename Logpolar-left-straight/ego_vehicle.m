function [] = ego_vehicle(x,y)

%vehicle 
width=2.4;
height=4.6;

%scatter(x,y,30,'MarkerFaceColor','blue');
if x~=0    
    [x,y]=trans(x,y,1.07); 
end

rectangle('Position',[x-width/2 y-height width height],'FaceColor',[0 0 1]);

%{
%[x,y]=trans(x,y,1.07);

hold on;
base=1.07;
p1=[x-width/2,y-height];
p2=[x+width/2,y-height];
p3=[x-width/2,y];
p4=[x+width/2,y];

[p1(1),p1(2)]=trans(p1(1),p1(2),base);
[p2(1),p2(2)]=trans(p2(1),p2(2),base);
[p3(1),p3(2)]=trans(p3(1),p3(2),base);
[p4(1),p4(2)]=trans(p4(1),p4(2),base);

line([p1(1) p2(1)],[p1(2) p2(2)],'color', [0 0 1]);
line([p1(1) p4(1)],[p1(2) p4(2)],'color', [0 0 1]);
line([p2(1) p3(1)],[p2(2) p3(2)],'color', [0 0 1]);
line([p3(1) p4(1)],[p3(2) p4(2)],'color', [0 0 1],'LineWidth',5);
%}
end

