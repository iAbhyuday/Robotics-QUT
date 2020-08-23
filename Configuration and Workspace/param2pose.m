function effactorPos = param2pose(l,theta)
theta = deg2rad(theta) ;
ef= rot2D(theta(1))*translate2D(l(1))*rot2D(theta(2)-pi)*translate2D(l(2)) ;
effactorPos = [ef(1,3), ef(2,3)] ;

end
