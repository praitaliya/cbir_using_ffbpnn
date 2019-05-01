function resultImg = quantizeRGB(img, n)
%
% n - the number of partitions for each edge after quantization.
%     It should be a factor of 256 (e.g. 4)
%
img = double(img);
[M, N, D] = size(img);
resultImg = zeros(M, N);
stepSize = 256 / n;

for i = 1 : 3
    resultImg(:, :) = resultImg(:, :) + floor(img(:, :, i) / stepSize) * n^(3 - i);
end