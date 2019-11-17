function [a,u] = rotMat2Eaa(R)
% [a,u] = rotMat2Eaa(R)
% Computes the angle and principal axis of rotation given a rotation matrix R. 
% Inputs:
%	R: rotation matrix
% Outputs:
%	a: angle of rotation
%	u: axis of rotation 

a = acosd((trace(R)-1)/2);
ux = (R - R')/2*sind(a);
u = [ux(3,2), ux(1,3),ux(2,1)];

end

