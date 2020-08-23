function param = pose2param(l,pos)
    effective_rad = norm(pos) ;
    theta2 = acos(-(effective_rad^2 -l(1)^2-l(2)^2)/(2*l(1)*l(2))) ;
    theta1 = acos(-(l(2)^2 -l(1)^2-effective_rad^2)/(2*l(1)*effective_rad)) + atan2(pos(2),pos(1))   ;
    param = [rad2deg(theta1) rad2deg(theta2)] ;
    
end