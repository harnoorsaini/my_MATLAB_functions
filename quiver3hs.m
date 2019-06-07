function quiver3hs(X,V,SCALE)
%QUIVER3HS Plots quiver3 for vectors V at points X
%
% H. Saini 05/09/18

if size(X,2) ~= 3
    error('X must be Nx3');
elseif size(V,2) ~= 3
    error('V must be Nx3');
end
    
if nargin == 0
    error(message('MATLAB:narginchk:notEnoughInputs'));
elseif nargin == 2 
    quiver3(X(:,1),X(:,2),X(:,3),V(:,1),V(:,2),V(:,3));
    axis equal
elseif nargin == 3
    quiver3(X(:,1),X(:,2),X(:,3),V(:,1),V(:,2),V(:,3),SCALE);
    axis equal    
else
    error('Incorrect number of arguments, require exactly 2.');
end
