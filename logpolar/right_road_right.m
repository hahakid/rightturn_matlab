function [] = right_road_right(x,y,theta)
%xy为道路的点
%vx vy为车的点（1，2）是车头

hold on;
base=1.07;

r1=3.75;%norm([x(29),y(29)]-[x(19)-3.75,y(19)-3.75]);
arcc([x(41),y(41)],-pi/2,0,r1,[0.5 0.9 0]);

r2=7.5;%norm([x(30),y(30)]-[x(23),y(23)]);
arcc([x(41),y(41)],-pi/2,0,r2,[0.5 0.9 0]);
    

end

