global chosenImageName;
global im111;
global filename;

[filename pathname]=uigetfile( ...
         {'*.jpg'; '*.bmp'; '*.gif'; '*.tif'; '*.png'; '*.*'},...
         'Choose an image.',pathname);

if isequal([filename pathname],[0,0])
    return;
end

chosenImageName = [pathname filename];
im111 = imread(chosenImageName);

qImg1=rgb2gray(im111);
global k;
A = imhist(qImg1);    
Y = Sim(net,A);
fid = fopen('re1.txt','w+');
for i =1 : 1
    k=max(Y(:,i));
    for j = 1 : 9
        if (k==Y(j,i))
            fprintf(1,'%s\n',['class-' int2str(j)]);
            k=j;
        end 
    end
end
save Y.mat
filePath = ['E:\Renish\Database\class-' int2str(k) '.bin'];
global rgbHiss;
rgbHiss = loadDataGUI(filePath);


img11 = double(im111)/256;

set(chosenImg, 'CData', img11);

set(buttonRun,'Visible','on');
set(buttonNext,'Visible','off');
set(buttonPrev,'Visible','off');
set(result, 'Visible','off');
set(chosenImg,'Visible','on');

openAgain = openAgain + 1;