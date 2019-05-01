global displayImages;

if page>=2
    page = page - 1;
        for k = 1:25
            im222 = imread( strcat( imageFilePath, num2str(imgList(k+(page-1)*25)-1), '.jpg') );
            img22 = double(im222)/256;
            set(displayImages(k),'CData',img22);
        end
end

if page==1
    set(buttonPrev,'Visible','off');
end

if page < 4
    set(buttonNext,'Visible','on');
end    
    