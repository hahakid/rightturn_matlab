function [ nx,ny ] = trans( x,y,base)
%UNTITLED4 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
p=log(sqrt(x.^2+y.^2))/log(base);


theta=zeros(1,length(x));
for i=1:length(x)
%��һ����
if x(i)>0 && y(i)>0
    theta(i)=atan(y(i)/x(i));
end
%�ڶ�����
if x(i)<0 && y(i)>0 
    theta(i)=atan(y(i)/x(i))+pi;
end
%��������
if x(i)<0 && y(i)<=0 
    theta(i)=atan(y(i)/x(i))+pi;
end
%��������
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

