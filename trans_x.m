function XX=trans_x(X,Y,theta,r)

XX=X*cos(-theta)+Y*sin(-theta)+r*(1-cos(theta));

end