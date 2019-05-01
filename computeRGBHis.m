function his = computeRGBHis(qImg, m)
%
[M, N] = size(qImg);
his = zeros(m, 2);

for x = 1 : M
    for y = 1 : N
        if qImg(x, y) ~= -1
            color = qImg(x, y);
            [count, qImg] = numOf4Neighbors(qImg, x, y);
            if count > 900
                his(color + 1, 1) = his(color + 1, 1) + count;
            else
                his(color + 1, 2) = his(color + 1, 2) + count;
            end
        end
    end
end