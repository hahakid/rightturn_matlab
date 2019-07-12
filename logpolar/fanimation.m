function [outputArg1,outputArg2] = fanimation(L,step,base)

rt_r=3*L/4;
lt_r=7*L/4+0.5;
move=(L*2+4)/step;% ����������
angle=90/step; 
[roadx,roady]=road_points(L);%��·�ĵ�
[vehiclex,vehicley]=vehicle_point(L,0);%���󳵵ĵ�
%ego vehicle
set(gca,'xtick',[],'xticklabel',[]);
set(gca,'ytick',[],'yticklabel',[]);


%����
for i=0:5:step
    clf;
    theta=-2*pi*i/360;
    [vehiclex,vehicley]=vehicle_point(L,move*i);%���³��ƶ�
    %[ego_x,ego_y]=lt_trans(x_0,y_0,theta,lt_r);%���³�ͷ����
    %[ego_x,ego_y]=rotate(x_0,y_0,theta);

    f=figure(1);
    %logpolar2(theta,lt_r);   
    logpolar1(theta);
    hold on;

    %xx=xl;yy=yl;
    [rrxn,rry]=rotate(roadx+7/4*L,roady,theta);%��ת��·
    rrx=rrxn-7/4*L;%7/4*L��ת�����Բ���˶�����ת���ģ�-7/4*L��0��
    [rrx1,rry1] = trans( rrx,rry,base);%��·log-polar
    for j=1:36
        text(rrx1(j),rry1(j),strcat("p",num2str(j)));%��·����
    end
    ego_vehicle(0,0);%����

    lines_road(rrx,rry);% ���е�·������    

    [vvxn,vvy]=rotate(vehiclex+7/4*L,vehicley,theta);%��תֱ�г�
    vvx=vvxn-7/4*L;%7/4*L��ת�����Բ���˶�����ת���ģ�-7/4*L��0)
    lines_vehicle(vvx,vvy);%������
    %straight_road_right(rrx1,rry1,vvx,vvy);%ֱ�г�·Ȩ
    straight_road_right(rrx,rry,vvx,vvy);%ֱ�г�·Ȩ
    ego_road_right(rrx,rry,theta);%ego·Ȩ 
    pause(1);
    
end
end

