function [ nx,ny ] = trans( x,y,base)
%UNTITLED4 此处显示有关此函数的摘要
%   此处显示详细说明
p=log(sqrt(x.^2+y.^2))/log(base);


theta=zeros(1,length(x));
for i=1:length(x)
%第一象限
if x(i)>0 && y(i)>0
    theta(i)=atan(y(i)/x(i));
end
%第二象限
if x(i)<0 && y(i)>0 
    theta(i)=atan(y(i)/x(i))+pi;
end
%第三象限
if x(i)<0 && y(i)<=0 
    theta(i)=atan(y(i)/x(i))+pi;
end
%第四象限
if x(i)>0 && y(i)<=0
    theta(i)=atan(y(i)/x(i));
end

end

%if x.>0
%    theta=atan(y./x);
%else
%    theta=atan(y./x)+pi;
%end

nx=p.*cos(theta);
ny=p.*sin(theta);

end

