function []=arcc(o,s,e,r,c)
the=s:pi/180:e;
x0=o(1);%原点
y0=o(2);
x=x0+r*cos(the);
y=y0+r*sin(the);
%x1=x0+r*cos(s);%起点终点
%y1=y0+r*sin(s);
%x2=x0+r*cos(e);
%y2=y0+r*sin(e);
%plot(x0,y0,'ro',x,y,x1,y1,'*',x2,y2,'*','Color',c);
[x11,y11]=trans(x,y,1.07);
%[x1,y1]=trains(x1,y1,1.07);
plot(x11,y11,'--','LineWidth',2,'Color',c);

%plot(x,y,x1,y1,'color',[0.3 0 0.9],'LineWidth',3,'LineStyle',':');

%axis([-2 20 -5 20])