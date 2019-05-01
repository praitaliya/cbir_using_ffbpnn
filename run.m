 
%global imgList;
%imgList = [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25];

global page;
page = 0;

%global rate;
%rate = 0.99;

%function call
[base, remain] = strtok(filename, '.');
base = floor(str2double(base) / 100) * 100;
global imgList;
global rate;
[imgList, rate] = queryDatabaseGUI(im111, base, rgbHiss);
rate = round(rate*1000)/1000;

set(buttonRun,'Visible','off');
set(buttonNext,'Visible','on');
set(buttonPrev,'Visible','off');
set(result, 'Visible','on','String',strcat('Accuracy Rate: ',num2str(rate)));
% for i =1 : 1
%     k=max(Y(:,i));
%     for j = 1 : 7
%         if (k==Y(j,i))
%             fprintf(1,'%s\n',['class-' int2str(j)]);
%         end 
%     end
% end
next;