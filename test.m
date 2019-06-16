clear;
before=load("pos.csv");
X=before(:,1);
Y=before(:,2);
L=7.5;
r=L;
%[X,Y]=points(L);

%ego vehicle
x_0=0;
y_0=0;
ego_x=0;
ego_y=0;
%straight vehicle
x_1=-7*L/4;
y_1=3*L/4;
str_x=x_1;
str_y=y_1;
%left turn vehicle
x_2=-L;
y_2=2*L;
left_x=x_2;
left_y=y_2;

for i=0:10:90
%     index=1;
    XX=trans_x(X,Y,2*pi*i/360,r);
    YY=trans_y(X,Y,2*pi*i/360,r);
    
    after=horzcat(XX,YY);
    figure(1);
    axis([ego_x-20 ego_x+20 ego_y-20 ego_y+20]);
    
    ego_vehicle(ego_x,ego_y);
    %str_vehicle(str_x,str_y);
    %left_vehicle(left_x,left_y);
    line_vehicle((3*XX(10)+XX(14))/4,(3*YY(10)+YY(14))/4,x_2,y_2);
    
    lines(XX,YY);
    
    pause(0.5);
    cla;
    %更新原点
    ego_x=trans_x(x_0,y_0,pi*i/360,r);
    ego_y=trans_y(x_0,y_0,pi*i/360/32,r);
    
    %更新直行车,更新应该是原地不动
    str_x=trans_x(x_1,y_1,2*pi*i/360,r);
    str_y=trans_y(x_1,y_1,2*pi*i/360,r);
    
    %更新左转车,更新应该是原地不动
    left_x=trans_x(x_2,y_2,2*pi*i/360,r);
    left_y=trans_y(x_2,y_2,2*pi*i/360,r);
    
end

%for i=1:20
%    text(before(i,1),before(i,2),strcat("A",num2str(i)));
%end


