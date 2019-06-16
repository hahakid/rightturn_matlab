function [] = road_right2(x,y,theta)
    hold on;
    r1=norm([x(9),y(9)]-[x(11),y(11)]);
    r2=norm([x(8),y(8)]-[x(11),y(11)]);
    arcc([x(11),y(11)],pi+theta,3*pi/2+theta,r1,'r');
    arcc([x(11),y(11)],pi+theta,3*pi/2+theta,r2,'r');
    
    r3=7.5;%norm([x(29),y(29)]-[x(19)-3.75,y(19)-3.75]);
    arcc([x(37),y(37)],pi/2+theta,pi+theta,r3,'b');

    r4=3.75;%norm([x(30),y(30)]-[x(23),y(23)]);
    arcc([x(37),y(37)],pi/2+theta,pi+theta,r4,'b');
    
    
end

