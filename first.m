

clear all;
close all;
clc;
while (1==1)
    choice=menu('CBIR',...
                'Create Database',...
                'Initialize Network',...
                'Test on Photos',...
                'Exit');
    if (choice ==1)
%       if exist('dataset1.mat','file')
%            load dataset1;
%       else
           databaseConstruction;
%       end
    end
    if (choice == 2)
        netw;
    end    
    
    if (choice == 3)
%        pause(0.001);
%        [file_name file_path] = uigetfile ('*.jpg');
%        if file_path ~= 0
%            im = imread ([file_path,file_name]);
%            tic
%            im_out = imscan (net,im);
%            toc
%            figure;
%            imshow(im_out,'notruesize');
             gui
%        end
    end
    if (choice == 4)
        clear all;
        clc;
        close all;
        return;
    end    
end