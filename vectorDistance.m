function dis = vectorDistance(v1, v2)
%
% Calculate the distance of v1 and v2 using formula
%     dis = sum(abs(v1 - v2) ./ (v1 + v2 + 1))
%
dis = sum(sum(abs(v1 - v2)));