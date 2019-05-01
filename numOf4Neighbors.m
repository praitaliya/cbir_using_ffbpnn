function [count, img] = numOf4Neighbors(img, x0, y0)
%
% img is assumed to be two-dimensional.
%
if img(x0, y0) == -1
    count = 0;
    return;
end

[M N] = size(img);

stack = zeros(10000, 1);
top = 0;
count = 0;
color = img(x0, y0);

stack(top + 1) = x0;
stack(top + 2) = y0;
top = top + 2;
count = count + 1;
img(x0, y0) = -1;

while top ~= 0
    y = stack(top);
    x = stack(top - 1);
    top = top - 2;
    
    for i = -1 : 2 : 1
        if x + i >= 1 && x + i <= M && img(x + i, y) == color
            stack(top + 1) = x + i;
            stack(top + 2) = y;
            top = top + 2;
            count = count + 1;
            img(x + i, y) = -1;
        end
        if y + i >= 1 && y + i <= N && img(x, y + i) == color
            stack(top + 1) = x;
            stack(top + 2) = y + i;
            top = top + 2;
            count = count + 1;
            img(x, y + i) = -1;
        end
    end
end