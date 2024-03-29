clc;
clear;
L=7.5;
rt_r=3*L/4;
lt_r=7*L/4;
[xl,yl]=points(L);

%ego vehicle
x_0=0;
y_0=0;
ego_x=0;
ego_y=0;
set(gca,'xtick',[],'xticklabel',[]);
set(gca,'ytick',[],'yticklabel',[]);

for i=0:22.5:90
    
    theta=2*pi*i/360;
    %xx=xl;yy=yl;
    [xx,yy]=rotate(xl,yl,theta);
    scatter(xx(1:36),yy(1:36),10,'MarkerFaceColor','black');
    
    for j=1:36
        text(xx(j),yy(j),strcat("p",num2str(j)));
    end
    
    f=figure(1);
    axis([ego_x-20 ego_x+20 ego_y-20 ego_y+20]);
    %axis([x_0-10 x_0+10 y_0-10 y_0+10]);
    
    ego_vehicle(ego_x,ego_y);%本车
    lines_road(xx,yy);% s所有道路
    
    hold on;
    pause(0.5);
    %f=getframe(gcf);
    %imwrite(f.cdata,['.\',int2str(i),'.jpg']);
    
    cla;
    %更新原点
    %[ego_x,ego_y]=rt_trans(0,0,theta,rt_r);
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
    xn=x*cos(-theta)+y*sin(-theta)-r*(1-cos(-theta));
    yn=x*sin(-theta)-y*cos(-theta)-r*sin(-theta);
end

%只旋转
function [xn,yn]=rotate(x,y,theta) 
    %    
    xn=x*cos(-theta)+y*sin(-theta);
    yn=x*sin(-theta)-y*cos(-theta);
end
