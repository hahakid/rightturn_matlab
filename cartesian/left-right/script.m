clc;
clear;
L=7.5;
rt_r=3*L/4;
lt_r=7*L/4+0.5;
step=90;
%move=(L*2+4)/step;% 车辆的行走
angle=90/step; 
[roadx,roady]=road_points(L);%道路的点
[vehiclex,vehicley]=vehicle_point(L,0);%对象车的点
%ego_point(L);

%ego vehicle
x_0=0;
y_0=0;
ego_x=0;
ego_y=0;


%i=0;
for i=0:1:step
    f=figure(1);
    set(gca,'xtick',[],'xticklabel',[]);
    set(gca,'ytick',[],'yticklabel',[]);
    %axis([ego_x-20 ego_x+20 ego_y-20 ego_y+20]);
    axis([x_0-20 x_0+20 y_0-20 y_0+20]);
    
    theta=-2*pi*i*angle/360;
    %xx=xl;yy=yl;
    [rrxn,rry]=rotate(roadx+5/4*L,roady,theta);%旋转道路
    rrx=rrxn-5/4*L;%旋转中心（-5/4*L，0）
    [vvxn,vvy]=rotate(vehiclex+5/4*L,vehicley,theta);%旋转直行车
    vvx=vvxn-5/4*L;%旋转中心（-5/4*L，0）
    
    %for j=1:36
    %    text(rrx(j),rry(j),strcat("p",num2str(j)));%道路顶点
    %end
    
    scatter(rrx(1:36),rry(1:36),10,'MarkerFaceColor','black');%道路
    hold on;
    
    
    scatter(vvx,vvy,10,'MarkerFaceColor','green');%车
    ego_vehicle(0,0);%本车
    
    lines_road(rrx,rry);% 所有道路的线条
    
    %i,move,move*i;
    [vehiclex,vehicley]=vehicle_point(L,theta);%更新车移动
    road_right(rrx,rry,vvx,vvy,theta,L);%对方车路权
    lines_vehicle(vvx,vvy);%车线条
    ego_road_right(rrx,rry,theta,L);%ego车路权
    
    %pause(0.5);
    f=getframe(gcf);
    %pause(1);
    imwrite(f.cdata,['.\out\',int2str(i),'.jpg']);
    
    %制作gif动图
    im = frame2im(getframe(gcf));    
    [I, map] = rgb2ind(im,20);
    if (i==0)
    imwrite(I,map,'.\out\MyGif2.gif','gif','Loopcount',inf,'DelayTime',0.01);
    else
        imwrite(I,map,'.\out\MyGif2.gif','gif','WriteMode','append','DelayTime',0.01);
    end 
    
    cla;
    %更新原点
    
    [ego_x,ego_y]=lt_trans(x_0,y_0,theta,lt_r);
    
    %更新直行车,更新应该是原地不动
    %str_x=trans_x(x_1,y_1,2*pi*i/360,r);
    %str_y=trans_y(x_1,y_1,2*pi*i/360,r);
    
    %更新左转车,更新应该是原地不动
    %left_x=trans_x(x_2,y_2,2*pi*i/360,r);
    %left_y=trans_y(x_2,y_2,2*pi*i/360,r);
    
    
end

%左转
function [xn,yn]=lt_trans(x,y,theta,r) 
    %    
    xn=x*cos(theta)-y*sin(theta)+r*(1-cos(-theta));
    yn=x*sin(theta)+y*cos(theta)+r*sin(-theta);
end

%只旋转
function [xn,yn]=rotate(x,y,theta) 
    %    
    xn=x*cos(theta)-y*sin(theta);
    yn=x*sin(theta)+y*cos(theta);
    %[x,y]'=[[]]
end




