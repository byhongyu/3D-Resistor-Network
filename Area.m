function [A_fiber,A_sizing] = Area(indentation,th_sizing,R_curv1,R_curv2)
%% calculating contact area 
%% input indentation,sizing thickness, curvature 1 and 2.
% output: contact area of fiber and sizing. 
%%
if indentation <= th_sizing
    A_fiber = 0
    A_sizing = pi*sqrt((R_curv1+th_sizing)^2-(R_curv1+th_sizing-indentation)^2)*sqrt((R_curv2+th_sizing)^2-(R_curv2+th_sizing-indentation)^2)
else
    A_fiber = pi*sqrt(R_curv1^2-(R_curv1-indentation+th_sizing)^2)*sqrt(R_curv2^2-(R_curv2-indentation+th_sizing)^2)
A_sizing = pi*sqrt((R_curv1+th_sizing)^2-(R_curv1-indentation+th_sizing)^2)*sqrt((R_curv2+th_sizing)^2-(R_curv2-indentation+th_sizing)^2)-A_fiber
end 