function dist = dist_points_vecs (v1,v2)

len1 = size(v1,1);
len2 = size(v2,1);

if len1 ~= len2
    error('The two vectors/points do not have the same lengths!')
else
    len = len1;
end

dim1 = size(v1,2);
dim2 = size(v2,2);

if dim1 ~= dim2
    error('The two vectors/points do not have the same dimensions!')
else
    dim = dim1;
end

dist = zeros(len,1);
for p_idx = 1:len
    sum = 0;
    for dim_idx = 1:dim
        sum = sum + (v1(p_idx,dim_idx)-v2(p_idx,dim_idx))^2;
    end
    dist(p_idx,1) = sqrt(sum);
end

