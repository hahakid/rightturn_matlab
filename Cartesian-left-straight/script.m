clc;
clear;
L=7.5;
rt_r=3*L/4;
lt_r=7*L/4+0.5;
step=90;
move=(L*2+4)/step;% ����������
angle=90/step; 
[roadx,roady]=road_points(L);%��·�ĵ�
[vehiclex,vehicley]=vehicle_point(L,0);%���󳵵ĵ�
%ego_point(L);


%ego vehicle
x_0=0;
y_0=0;
ego_x=0;
ego_y=0;



for i=0:1:step
    f=figure(1);
    set(gca,'xtick',[],'xticklabel',[]);
    set(gca,'ytick',[],'yticklabel',[]);
    axis([ego_x-20 ego_x+20 ego_y-20 ego_y+20]);
    %axis([x_0-10 x_0+10 y_0-10 y_0+10]);
    
    theta=-2*pi*i/360;
    %xx=xl;yy=yl;
    [rrx,rry]=rotate(roadx,roady,theta);%��ת��·
    [vvx,vvy]=rotate(vehiclex,vehicley,theta);%��תֱ�г�
    
    
    %for j=1:36
    %    text(rrx(j),rry(j),strcat("p",num2str(j)));%��·����
    %end
    
    scatter(rrx(1:36),rry(1:36),10,'MarkerFaceColor','black');%��·
    hold on;
    
    
    scatter(vvx,vvy,10,'MarkerFaceColor','green');%ֱ�г�
    ego_vehicle(ego_x,ego_y);%����
    
    lines_road(rrx,rry);% ���е�·������
    

    [vehiclex,vehicley]=vehicle_point(L,move*i);%���³��ƶ�
    straight_road_right(rrx,rry,vvx,vvy);%ֱ�г�·Ȩ
    lines_vehicle(vvx,vvy);%������
    ego_road_right(rrx,rry,theta);%ego·Ȩ
    
    %pause(0.5);
    f=getframe(gcf);
    %imwrite(f.cdata,['.\out\',int2str(i),'.jpg']);
    im = frame2im(getframe(gcf));    
    [I, map] = rgb2ind(im,20);
    if (i==0)
    imwrite(I,map,'.\out\MyGif2.gif','gif','Loopcount',inf,'DelayTime',0.01);
    else
        imwrite(I,map,'.\out\MyGif2.gif','gif','WriteMode','append','DelayTime',0.01);
    end 
    
    cla;
    %����ԭ��
    [ego_x,ego_y]=lt_trans(x_0,y_0,theta,lt_r);
    
   
end

%��ת
function [xn,yn]=lt_trans(x,y,theta,r) 
    %    
    xn=x*cos(theta)-y*sin(theta)+r*(1-cos(-theta));
    yn=x*sin(theta)+y*cos(theta)+r*sin(-theta);
end

%ֻ��ת
function [xn,yn]=rotate(x,y,theta) 
    %    
    xn=x*cos(theta)-y*sin(theta);
    yn=x*sin(theta)+y*cos(theta);
    %[x,y]'=[[]]
end




