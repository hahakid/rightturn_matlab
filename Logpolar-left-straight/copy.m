clc;
clear;
base=1.07;
p=(5:5:50);
power=base.^p;
theta=0:pi/18:pi;
x=zeros(19,10);
y=zeros(19,10);
%k=p(i)*cos(theta);
for i=1:1:10
    x(:,i)=p(i)*cos(theta);
    y(:,i)=p(i)*sin(theta);
end
plot(x,y,'.-');
hold on;
%line([0.1 0.1],[-x(0,9) -y(0,9)]);

{
line([0 x(2,10)],[0 y(2,10)],'color', [0 0 0]);
line([0 x(3,10)],[0 y(3,10)],'color', [0 0 0]);
line([0 x(4,10)],[0 y(4,10)],'color', [0 0 0]);
line([0 x(5,10)],[0 y(5,10)],'color', [0 0 0]);
line([0 x(6,10)],[0 y(6,10)],'color', [0 0 0]);
line([0 x(7,10)],[0 y(7,10)],'color', [0 0 0]);
line([0 x(8,10)],[0 y(8,10)],'color', [0 0 0]);
line([0 x(9,10)],[0 y(9,10)],'color', [0 0 0]);
line([0 x(10,10)],[0 y(10,10)],'color', [0 0 0]);
line([0 x(11,10)],[0 y(11,10)],'color', [0 0 0]);
line([0 x(12,10)],[0 y(12,10)],'color', [0 0 0]);
line([0 x(13,10)],[0 y(13,10)],'color', [0 0 0]);
line([0 x(14,10)],[0 y(14,10)],'color', [0 0 0]);
line([0 x(15,10)],[0 y(15,10)],'color', [0 0 0]);
line([0 x(16,10)],[0 y(16,10)],'color', [0 0 0]);
line([0 x(17,10)],[0 y(17,10)],'color', [0 0 0]);
line([0 x(18,10)],[0 y(18,10)],'color', [0 0 0]);
}

% road_poit + tie*2
rp_y=[1:0.5:24.5];%
%rp_x=ones(1,48)*0.01;
rp_x=zeros(1,48);

[new_x,new_y]=trans(rp_x,rp_y,base);
plot(new_x,new_y,'.','MarkerSize',10,'MarkerEdgeColor',[1,0,0]);

tie_l=ones(1,48)*1.55;
tie_r=ones(1,48)*-1.55;

[tie_l_nx,tie_l_ny]=trans(tie_l,rp_y,base);
[tie_r_nx,tie_r_ny]=trans(tie_r,rp_y,base);

plot(tie_l_nx,tie_l_ny,'.','MarkerSize',5,'MarkerEdgeColor',[1,0,1]);
plot(-tie_r_nx,-tie_r_ny,'.','MarkerSize',5,'MarkerEdgeColor',[1,0,1]);

% 1st part: road 1-4, baseroad 1-2
road_y1=[1:0.5:8];%
road4=ones(1,15)*1.75;
road3=ones(1,15)*-1.75;
road2=ones(1,15)*(-1.75-3.5);
road1=ones(1,15)*(-1.75-3.5-3.5);
baseroad1=ones(1,15)*(1.75+0.2);
baseroad2=ones(1,15)*(-1.75-3.5-3.5-0.2);

[road4_nx,road4_ny]=trans(road4,road_y1,base);
[road3_nx,road3_ny]=trans(road3,road_y1,base);
[road2_nx,road2_ny]=trans(road2,road_y1,base);
[road1_nx,road1_ny]=trans(road1,road_y1,base);
[baseroad1_nx,baseroad1_ny]=trans(baseroad1,road_y1,base);
[baseroad2_nx,baseroad2_ny]=trans(baseroad2,road_y1,base);

plot(road4_nx,road4_ny,'-','LineWidth',1,'Color',[0 0 1]);
plot(-road3_nx,-road3_ny,'-','LineWidth',1,'Color',[0 0 1]);
plot(-road2_nx,-road2_ny,'-','LineWidth',1,'Color',[0 0 1]);
plot(-road1_nx,-road1_ny,'-','LineWidth',1,'Color',[0 0 1]);
plot(baseroad1_nx,baseroad1_ny,'-','LineWidth',1.5,'Color',[0 0 0]);
plot(-baseroad2_nx,-baseroad2_ny,'-','LineWidth',1.5,'Color',[0 0 0]);

% 2nd part: road 1-4, baseroad 1-2
road_y2=[18:0.5:25];%
road4_2=ones(1,15)*1.75;
road3_2=ones(1,15)*-1.75;
road2_2=ones(1,15)*(-1.75-3.5);
road1_2=ones(1,15)*(-1.75-3.5-3.5);
baseroad1_2=ones(1,15)*(1.75+0.2);
baseroad2_2=ones(1,15)*(-1.75-3.5-3.5-0.2);

[road4_2_nx,road4_2_ny]=trans(road4_2,road_y2,base);
[road3_2_nx,road3_2_ny]=trans(road3_2,road_y2,base);
[road2_2_nx,road2_2_ny]=trans(road2_2,road_y2,base);
[road1_2_nx,road1_2_ny]=trans(road1_2,road_y2,base);
[baseroad1_2_nx,baseroad1_2_ny]=trans(baseroad1_2,road_y2,base);
[baseroad2_2_nx,baseroad2_2_ny]=trans(baseroad2_2,road_y2,base);


plot(road4_2_nx,road4_2_ny,'-','LineWidth',1,'Color',[0 0 1]);
plot(-road3_2_nx,-road3_2_ny,'-','LineWidth',1,'Color',[0 0 1]);
plot(-road2_2_nx,-road2_2_ny,'-','LineWidth',1,'Color',[0 0 1]);
plot(-road1_2_nx,-road1_2_ny,'-','LineWidth',1,'Color',[0 0 1]);
plot(baseroad1_2_nx,baseroad1_2_ny,'-','LineWidth',1.5,'Color',[0 0 0]);
plot(-baseroad2_2_nx,-baseroad2_2_ny,'-','LineWidth',1.5,'Color',[0 0 0]);


% cross
c_x=[6:1:20];
b_road1=ones(1,15)*9;
c_road1=ones(1,15)*9.2;
c_road2=ones(1,15)*12.7;
c_road3=ones(1,15)*16.2;
c_road4=ones(1,15)*19.7;
b_road2=ones(1,15)*19.9;
[b_r1_nx,b_r1_ny]=trans(c_x,b_road1,base);
[b_r2_nx,b_r2_ny]=trans(c_x,b_road2,base);
[c_r1_nx,c_r1_ny]=trans(c_x,c_road1,base);
[c_r2_nx,c_r2_ny]=trans(c_x,c_road2,base);
[c_r3_nx,c_r3_ny]=trans(c_x,c_road3,base);
[c_r4_nx,c_r4_ny]=trans(c_x,c_road4,base);
plot(b_r1_nx,b_r1_ny,'-','LineWidth',1.5,'Color',[0 0 0]);
plot(b_r2_nx,b_r2_ny,'-','LineWidth',1.5,'Color',[0 0 0]);
plot(c_r1_nx,c_r1_ny,'-','LineWidth',1,'Color',[0 0 1]);
plot(c_r2_nx,c_r2_ny,'-','LineWidth',1,'Color',[0 0 1]);
plot(c_r3_nx,c_r3_ny,'-','LineWidth',1,'Color',[0 0 1]);
plot(c_r4_nx,c_r4_ny,'-','LineWidth',1,'Color',[0 0 1]);