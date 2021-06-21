function plot3hs(X,style,DIM_1,DIM_2,DIM_3)
%SCATTER3HS Plots scatter3 for given array and dimensions. If only one
% input argument is given, the default dimension order of 1, 2, 3 is used. 
% Style can also be specified as the second argument, e.g. '+r'. The 
% remaining parameters must be specified together and give non defualt 
% ordering of dimensions.
%
% H. Saini 05/09/18

if nargin == 0
    error(message('MATLAB:narginchk:notEnoughInputs'));
end

if nargin < 3 && nargin > 0
    % default values for dimensions
    DIM_1 = 1; DIM_2 = 2; DIM_3 = 3;
end

if nargin == 1
    plot3(X(:,DIM_1),X(:,DIM_2),X(:,DIM_3));
else
    plot3(X(:,DIM_1),X(:,DIM_2),X(:,DIM_3),style);
end
axis equal
