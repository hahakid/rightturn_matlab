clc;
clear;
L=7.5;
rt_r=3*L/4;
lt_r=7*L/4+0.5;
step=90;
%move=(L*2+4)/step;% ����������
angle=90/step; 
[roadx,roady]=road_points(L);%��·�ĵ�
[vehiclex,vehicley]=vehicle_point(L,0);%���󳵵ĵ�
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
    [rrxn,rry]=rotate(roadx+5/4*L,roady,theta);%��ת��·
    rrx=rrxn-5/4*L;%��ת���ģ�-5/4*L��0��
    [vvxn,vvy]=rotate(vehiclex+5/4*L,vehicley,theta);%��תֱ�г�
    vvx=vvxn-5/4*L;%��ת���ģ�-5/4*L��0��
    
    %for j=1:36
    %    text(rrx(j),rry(j),strcat("p",num2str(j)));%��·����
    %end
    
    scatter(rrx(1:36),rry(1:36),10,'MarkerFaceColor','black');%��·
    hold on;
    
    
    scatter(vvx,vvy,10,'MarkerFaceColor','green');%��
    ego_vehicle(0,0);%����
    
    lines_road(rrx,rry);% ���е�·������
    
    %i,move,move*i;
    [vehiclex,vehicley]=vehicle_point(L,theta);%���³��ƶ�
    road_right(rrx,rry,vvx,vvy,theta,L);%�Է���·Ȩ
    lines_vehicle(vvx,vvy);%������
    ego_road_right(rrx,rry,theta,L);%ego��·Ȩ
    
    %pause(0.5);
    f=getframe(gcf);
    %pause(1);
    imwrite(f.cdata,['.\out\',int2str(i),'.jpg']);
    
    %����gif��ͼ
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
    
    %����ֱ�г�,����Ӧ����ԭ�ز���
    %str_x=trans_x(x_1,y_1,2*pi*i/360,r);
    %str_y=trans_y(x_1,y_1,2*pi*i/360,r);
    
    %������ת��,����Ӧ����ԭ�ز���
    %left_x=trans_x(x_2,y_2,2*pi*i/360,r);
    %left_y=trans_y(x_2,y_2,2*pi*i/360,r);
    
    
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




