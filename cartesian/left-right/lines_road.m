function [] = lines_road(x,y)

line([x(1) x(7)],[y(1) y(7)],'color', [0 0 0],'LineWidth',2);
line([x(2),x(8)],[y(2) y(8)],'color', [0 0 0],'LineStyle','--');
line([x(3) x(9)],[y(3) y(9)],'color', [0 0 0],'LineWidth',4);
line([x(4) x(10)],[y(4) y(10)],'color', [0 0 0],'LineStyle','--');
line([x(5) x(11)],[y(5) y(11)],'color', [0 0 0],'LineWidth',2);

line([x(6) x(7)],[y(6) y(7)],'color', [0 0 0],'LineWidth',2);
line([x(13) x(14)],[y(13) y(14)],'color', [0 0 0],'LineStyle','--');
line([x(17) x(18)],[y(17) y(18)],'color', [0 0 0],'LineWidth',4);
line([x(21) x(22)],[y(21) y(22)],'color', [0 0 0],'LineStyle','--');
line([x(25) x(26)],[y(25) y(26)],'color', [0 0 0],'LineWidth',2);

line([x(11) x(12)],[y(11) y(12)],'color', [0 0 0],'LineWidth',2);
line([x(15) x(16)],[y(15) y(16)],'color', [0 0 0],'LineStyle','--');
line([x(19) x(20)],[y(19) y(20)],'color', [0 0 0],'LineWidth',4);
line([x(23) x(24)],[y(23) y(24)],'color', [0 0 0],'LineStyle','--');
line([x(30) x(31)],[y(30) y(31)],'color', [0 0 0],'LineWidth',2);

line([x(26) x(32)],[y(26) y(32)],'color', [0 0 0],'LineWidth',2);
line([x(27) x(33)],[y(27) y(33)],'color', [0 0 0],'LineStyle','--');
line([x(28) x(34)],[y(28) y(34)],'color', [0 0 0],'LineWidth',4);
line([x(29) x(35)],[y(29) y(35)],'color', [0 0 0],'LineStyle','--');
line([x(30) x(36)],[y(30) y(36)],'color', [0 0 0],'LineWidth',2);


end

