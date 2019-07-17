function [] = lines(x,y)

line([x(1) x(5)],[y(1) y(5)],'color', [0 0 0],'LineWidth',2);
line([(x(1)+x(2))/2 (x(5)+x(6))/2],[(y(1)+y(2))/2 (y(5)+y(6))/2],'color', [0 0 0],'LineStyle','--');
line([x(2) x(6)],[y(2) y(6)],'color', [0 0 0],'LineWidth',4);
line([(x(2)+x(3))/2 (x(6)+x(7))/2],[(y(2)+y(3))/2 (y(6)+y(7))/2],'color', [0 0 0],'LineStyle','--');
line([x(3) x(7)],[y(3) y(7)],'color', [0 0 0],'LineWidth',2);

line([x(4) x(5)],[y(4) y(5)],'color', [0 0 0],'LineWidth',2);
line([(x(4)+x(9))/2 (x(5)+x(10))/2],[(y(4)+y(9))/2 (y(5)+y(10))/2],'color', [0 0 0],'LineStyle','--');
line([x(9) x(10)],[y(9) y(10)],'color', [0 0 0],'LineWidth',4);
line([(x(9)+x(13))/2 (x(10)+x(14))/2],[(y(9)+y(13))/2 (y(10)+y(14))/2],'color', [0 0 0],'LineStyle','--');
line([x(13) x(14)],[y(13) y(14)],'color', [0 0 0],'LineWidth',2);

line([x(14) x(18)],[y(14) y(18)],'color', [0 0 0],'LineWidth',2);
line([(x(14)+x(15))/2 (x(18)+x(19))/2],[(y(14)+y(15))/2 (y(18)+y(19))/2],'color', [0 0 0],'LineStyle','--');
line([x(15) x(19)],[y(15) y(19)],'color', [0 0 0],'LineWidth',4);
line([(x(15)+x(16))/2 (x(19)+x(20))/2],[(y(15)+y(16))/2 (y(19)+y(20))/2],'color', [0 0 0],'LineStyle','--');
line([x(16) x(20)],[y(16) y(20)],'color', [0 0 0],'LineWidth',2);

line([x(7) x(8)],[y(7) y(8)],'color', [0 0 0],'LineWidth',2);
line([(x(7)+x(11))/2 (x(8)+x(12))/2],[(y(7)+y(11))/2 (y(8)+y(12))/2],'color', [0 0 0],'LineStyle','--');
line([x(11) x(12)],[y(11) y(12)],'color', [0 0 0],'LineWidth',4);
line([(x(11)+x(16))/2 (x(12)+x(17))/2],[(y(11)+y(16))/2 (y(12)+y(17))/2],'color', [0 0 0],'LineStyle','--');
line([x(16) x(17)],[y(16) y(17)],'color', [0 0 0],'LineWidth',2);


end

