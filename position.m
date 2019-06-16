clear;
before=load("pos.csv");
X=before(:,1);
Y=before(:,2);

for i=0:5:90
%     index=1;
    XX=trans_x(X,Y,2*pi*i/360);
    YY=trans_y(X,Y,2*pi*i/360);
    after=horzcat(XX,YY);
    figure(1);
    xlim([-40,40]);
    ylim([-40,40]);
    scatter(before(:,1),before(:,2),1,'green');
    hold on;
    plot(0,0,'*');
    text(0,0,"初始位置");
 
    hold on;
    scatter(after(:,1),after(:,2),'r.');
    %hold on;
    plot(5.625-5.625*cos(2*pi*i/360),5.625*sin(2*pi*i/360),'b.');
    text(5.625,5.625,"移动后位置");
    pause(0.5);
    %cla;
    
end

for i=1:20
    text(before(i,1),before(i,2),strcat("A",num2str(i)));
end


