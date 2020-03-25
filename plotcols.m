function plotcols(A,C,t)
%PLOTFORCE plots columns of the form A(TIME,COMP1,...,COMPN), C is STYLE 
% either as color values or text
%
% H. Saini 19/03/20

if strcmp(t,'time')
    for idx = 2:size(A,2)
        ploths(A,C(idx-1,:),1,idx)
        hold on
    end
elseif strcmp(t,'notime')
    for idx = 1:size(A,2)
        ploths(A(:,idx),C(idx,:),1)
        hold on
    end
else
    error('Set time as NOTIME or TIME as third argument')
end