function rgbHiss = loadDataGUI(filePath)

rgbHiss = zeros(216, 2, 100);
fid = fopen(filePath);
for i = 1 : 100
    rgbHiss(:, :, i) = fread(fid, [216, 2], 'double');
end
fclose(fid);