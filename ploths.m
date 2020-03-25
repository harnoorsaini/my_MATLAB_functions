function ploths(X,STYLE,DIM_1,DIM_2)
%PLOTHS Plots plot for given array and dimensions. If only one
% input argument is given, the default dimensions of 1 and 2 are used. 
% Style can also be specified as the second argument, e.g. '+r'. The 
% remaining parameters must be specified together and give non defualt 
% ordering of dimensions.
%
% H. Saini 19/03/20

if nargin == 0
    error(message('MATLAB:narginchk:notEnoughInputs'));
end

if nargin < 3 && nargin > 0
    % default values for dimensions
    DIM_1 = 1; DIM_2 = 2;
end

if nargin == 1
    if size(X,2) > 1
        plot(X(:,DIM_1),X(:,DIM_2),'LineWidth',2);
    else
        plot(X(:,DIM_1),'LineWidth',2);
    end
else
    if size(X,2) > 1
        if ischar(STYLE)
            plot(X(:,DIM_1),X(:,DIM_2),STYLE,'LineWidth',2);
        else
            plot(X(:,DIM_1),X(:,DIM_2),'Color',STYLE,'LineWidth',2);
        end
    else
    if ischar(STYLE)
            plot(X(:,DIM_1),STYLE,'LineWidth',2);
        else
            plot(X(:,DIM_1),'Color',STYLE,'LineWidth',2);
    end    
    end
end
