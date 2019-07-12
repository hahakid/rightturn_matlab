function [] = logpolar2(alpha,lt_r)
hold on;
%alpha(0.8);
%%%%%%basic Log-polar%%%%%%%%
%L=7.5;
%lt_r=7*L/4+0.5;
base=1.07;
front=75;
side=35;
back=60;
p=(1:1:front);% 1.07^35=10.67 1.07^75=159
power=base.^p;
%theta=0:pi/18:pi;
theta=0:pi/36:pi*2;
%theta=[theta,theta(1)];
t=theta;
theta=theta(2:73);
x=zeros(72,front);
y=zeros(72,front);

for i=1:1:front
    x(:,i)=p(i)*cos(theta);
    y(:,i)=p(i)*sin(theta);
end

%{
for i=1:1:front
    a=x(:,i)';
    b=y(:,i)';
    for j=1:length(a)
        [aa,bb]=lt_trans(a(j),b(j),alpha,lt_r);
    end
    x(:,i)=aa';
    y(:,i)=bb';
end
%}

px1=x(1:5,1:side);
py1=y(1:5,1:side);
for i=1:1:side
    if mod(i,5)==0
        plot(px1(:,i),py1(:,i),'.-','color',[0.85 0.85 0.85]);    
    else
        plot(px1(:,i),py1(:,i),'.-','color',[0.95 0.95 0.95]); 
    end
end

px2=x(4:32,1:front);
py2=y(4:32,1:front);
for i=1:1:front
    if mod(i,5)==0
        plot(px2(:,i),py2(:,i),'.-','color',[0.85 0.85 0.85]); 
    else
        plot(px2(:,i),py2(:,i),'.-','color',[0.95 0.95 0.95]);
    end
end

px3=x(32:44,1:side);
py3=y(32:44,1:side);
for i=1:1:side
    if mod(i,5)==0
        plot(px3(:,i),py3(:,i),'.-','color',[0.85 0.85 0.85]);
    else
        plot(px3(:,i),py3(:,i),'.-','color',[0.95 0.95 0.95]);
    end
end

px4=x(44:64,1:back);
py4=y(44:64,1:back);
for i=1:1:back
    if mod(i,5)==0
        plot(px4(:,i),py4(:,i),'.-','color',[0.85 0.85 0.85]);
    else
        plot(px4(:,i),py4(:,i),'.-','color',[0.95 0.95 0.95]);
    end
end

px5=x(64:72,1:side);
py5=y(64:72,1:side);
for i=1:1:side
    if mod(i,5)==0
        plot(px5(:,i),py5(:,i),'.-','color',[0.85 0.85 0.85]);
    else
        plot(px5(:,i),py5(:,i),'.-','color',[0.95 0.95 0.95]);
    end
end

o=[0,0];
%o=lt_trans(0,0,theta,lt_r);

range1=(4:32);
for i=range1
    line([o(1) x(i,front)],[o(2) y(i,front)],'color', [0.85 0.85 0.85]);
end

range2=(44:64);
for i=range2
    line([o(1) x(i,back)],[o(2) y(i,back)],'color', [0.85 0.85 0.85]);
end

range3=[1:4,31:44,64:72];
for i=range3
    line([o(1) x(i,side)],[o(2) y(i,side)],'color', [0.85 0.85 0.85]);
end

x1=zeros(73,side);
y1=zeros(73,side);

for i=1:1:side
    x1(:,i)=p(i)*cos(t);
    y1(:,i)=p(i)*sin(t);
end

% 
% for i=1:1:side
%     a1=x1(:,i)';
%     b1=y1(:,i)';
%     for j=1:length(a1)
%         [aa1,bb1]=lt_trans(a1(j),b1(j),alpha,lt_r);
%     end
%     x1(:,i)=aa1';
%     y1(:,i)=bb1';
% end


for i=1:1:side
    if mod(i,5)==0
        plot(x1(:,i),y1(:,i),'.-','color',[0.85 0.85 0.85]);
    else
        plot(x1(:,i),y1(:,i),'.-','color',[0.95 0.95 0.95]);
    end
end
end

% function [xn,yn]=rotate(x,y,alpha) 
%     %    
%     xn=x*cos(alpha)-y*sin(alpha);
%     yn=x*sin(alpha)+y*cos(alpha);
%     %[x,y]'=[[]]
% end

function [xn,yn]=lt_trans(x,y,alpha,r) 
    %    
    xn=x*cos(alpha)-y*sin(alpha)+r*(1-cos(-alpha));
    yn=x*sin(alpha)+y*cos(alpha)+r*sin(-alpha);
end
