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

