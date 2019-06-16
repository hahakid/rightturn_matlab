clear;
%before=load("pos.csv");
%X=before(:,1);
%Y=before(:,2);
L=7.5;
r=L;
[X,Y]=points(L);

%ego vehicle
x_0=0;
y_0=0;
ego_x=0;
ego_y=0;
set(gca,'xtick',[],'xticklabel',[]);
set(gca,'ytick',[],'yticklabel',[]);
for i=0:1:90
    
    
    XX=trans_x(X,Y,2*pi*i/360,r);
    YY=trans_y(X,Y,2*pi*i/360,r);
    scatter(XX,YY,10,'MarkerFaceColor','black');
    
    for j=1:36
    text(XX(j),YY(j),strcat("p",num2str(j)));
    end
    
    
    %fprintf('p8(%f.3,%f6.3)\n',XX(8),YY(8));
    %fprintf('p9(%f.3,%f6.3)\n',XX(9),YY(9));
    
    %fprintf('p18(%f.3,%f6.3)\n',XX(18),YY(18));
    %fprintf('p22(%f.3,%f6.3)\n',XX(22),YY(22));
    
    
    %straight vehicle
    x_1=(XX(18)+XX(22))/2;
    y_1=(YY(18)+YY(22))/2;
    x_2=(XX(17)+XX(21))/2;
    y_2=(YY(17)+YY(21))/2;
    road_right(XX,YY);
    road_right2(XX,YY,pi*i/180);
    
    vehicle(x_1,y_1,x_2,y_2,'g');%直行车
    %left turn vehicle
    x_3=(XX(8)+XX(9))/2;
    y_3=(YY(8)+YY(9))/2;
    x_4=(XX(2)+XX(3))/2;
    y_4=(YY(2)+YY(3))/2;
    vehicle(x_3,y_3,x_4,y_4,'r');%左转车
    
    
    f=figure(1);
    axis([ego_x-20 ego_x+20 ego_y-20 ego_y+20]);
    
    ego_vehicle(ego_x,ego_y);%本车
    %str_vehicle(str_x,str_y);
    %left_vehicle(left_x,left_y);
    %line_vehicle((3*XX(10)+XX(14))/4,(3*YY(10)+YY(14))/4,x_2,y_2);
    
    lines_road(XX,YY);% s所有道路
    %lines_vehicle(str_x,str_y,'g');
    %lines_vehicle(left_x,left_y,'r');
    pause(0.5);
    f=getframe(gcf);
    imwrite(f.cdata,['.\',int2str(i),'.jpg']);
    
    cla;
    %更新原点
    ego_x=trans_x(x_0,y_0,pi*i/360,r);
    ego_y=trans_x(x_0,y_0,i/360,r);
    
    %更新直行车,更新应该是原地不动
    %str_x=trans_x(x_1,y_1,2*pi*i/360,r);
    %str_y=trans_y(x_1,y_1,2*pi*i/360,r);
    
    %更新左转车,更新应该是原地不动
    %left_x=trans_x(x_2,y_2,2*pi*i/360,r);
    %left_y=trans_y(x_2,y_2,2*pi*i/360,r);
    
end

%for i=1:20
%    text(before(i,1),before(i,2),strcat("A",num2str(i)));
%end


