function [xlist,ylist] = vehicle_point(L,theta)
% p3 p4
% p1 p2
w=2;
l=4;
m=2*theta;
if theta >= -pi/4
   %原始点
    p1=[-2*L/2-w/2,2*L];
    p2=[-2*L/2+w/2,2*L];
    p3=[-2*L/2-w/2,2*L+l];
    p4=[-2*L/2+w/2,2*L+l];
    %转弯，相对于旋转中心（7/4*L，2*L）
    x=p1(1)+7/4*L;
    y=p1(2)-2*L;
    p1(1)=x*cos(m)-y*sin(m)-7/4*L;
    p1(2)=x*sin(m)+y*cos(m)+2*L;
    x=p2(1)+7/4*L;
    y=p2(2)-2*L;
    p2(1)=x*cos(m)-y*sin(m)-7/4*L;
    p2(2)=x*sin(m)+y*cos(m)+2*L;
    x=p3(1)+7/4*L;
    y=p3(2)-2*L;
    p3(1)=x*cos(m)-y*sin(m)-7/4*L;
    p3(2)=x*sin(m)+y*cos(m)+2*L;
    x=p4(1)+7/4*L;
    y=p4(2)-2*L;
    p4(1)=x*cos(m)-y*sin(m)-7/4*L;
    p4(2)=x*sin(m)+y*cos(m)+2*L;

    xlist=[p1(1),p2(1),p3(1),p4(1)];
    ylist=[p1(2),p2(2),p3(2),p4(2)];
else
    move=(L*2+4)/5;
    
    %直行
    p1=[-L+m*move,5/4*L+w/2];
    p2=[-L+m*move,5/4*L-w/2];
    p3=[-L+l+m*move,5/4*L+w/2];
    p4=[-L+l+m*move,5/4*L-w/2];
    
    xlist=[p1(1),p2(1),p3(1),p4(1)];
    ylist=[p1(2),p2(2),p3(2),p4(2)];
end

end

