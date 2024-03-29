function [outputArg1,outputArg2] = fanimation(L,step,base)

rt_r=3*L/4;
lt_r=7*L/4+0.5;
move=(L*2+4)/step;% 车辆的行走
angle=90/step; 
[roadx,roady]=road_points(L);%道路的点
[vehiclex,vehicley]=vehicle_point(L,0);%对象车的点
%ego vehicle
set(gca,'xtick',[],'xticklabel',[]);
set(gca,'ytick',[],'yticklabel',[]);


%动画
for i=0:5:step
    clf;
    theta=-2*pi*i/360;
    [vehiclex,vehicley]=vehicle_point(L,move*i);%更新车移动
    %[ego_x,ego_y]=lt_trans(x_0,y_0,theta,lt_r);%更新车头中心
    %[ego_x,ego_y]=rotate(x_0,y_0,theta);

    f=figure(1);
    %logpolar2(theta,lt_r);   
    logpolar1(theta);
    hold on;

    %xx=xl;yy=yl;
    [rrxn,rry]=rotate(roadx+7/4*L,roady,theta);%旋转道路
    rrx=rrxn-7/4*L;%7/4*L左转弯近似圆周运动的旋转中心（-7/4*L，0）
    [rrx1,rry1] = trans( rrx,rry,base);%道路log-polar
    for j=1:36
        text(rrx1(j),rry1(j),strcat("p",num2str(j)));%道路顶点
    end
    ego_vehicle(0,0);%本车

    lines_road(rrx,rry);% 所有道路的线条    

    [vvxn,vvy]=rotate(vehiclex+7/4*L,vehicley,theta);%旋转直行车
    vvx=vvxn-7/4*L;%7/4*L左转弯近似圆周运动的旋转中心（-7/4*L，0)
    lines_vehicle(vvx,vvy);%车线条
    %straight_road_right(rrx1,rry1,vvx,vvy);%直行车路权
    straight_road_right(rrx,rry,vvx,vvy);%直行车路权
    ego_road_right(rrx,rry,theta);%ego路权 
    pause(1);
    
end
end

