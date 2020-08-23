% arm_lengths
l = [7,4] ;
% box dimensions
xlimit = [4,5] ;
ylimit = [2,8] ;
xbox = xlimit([1 2 2 1 1]) ;
ybox = ylimit([1 1 2 2 1])  ;

conf =zeros(1000,2) ;
work =zeros(1000,2) ;

for i = 0:5:360
    for j = 0:5:360
        pose = param2pose(l,[i,j]) ;
        joint_location = [l(1)*cosd(i),l(1)*sind(i)] ;
        
        arm_x = [0 joint_location(1) pose(1)] ;
        arm_y = [0 joint_location(2) pose(2)] ;
        % intersections of arm with obstacle
        [xi,yi] = polyxpoly(arm_x,arm_y,xbox,ybox) ;
        % no intersections found
        if isempty(xi) && isempty(yi)
            work = [work ;pose] ;
            conf = [conf ;[i,j]] ;
        end 
    end
end

figure(1) ;
% workspace
plot(work(:,1),work(:,2),'.b') ;
% configuration space
figure(2) ;
plot(conf(:,1),conf(:,2),'.r') ;



        
        
        
        

