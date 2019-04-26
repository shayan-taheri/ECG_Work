afdb_text = 'C:\Users\shaya\Desktop\Signal_Text\afdb_texts';
edb_text = 'C:\Users\shaya\Desktop\Signal_Text\edb_texts';
vfdb_text = 'C:\Users\shaya\Desktop\Signal_Text\vfdb_texts';

afdb_img = 'C:\Users\shaya\Desktop\Signal_Text\afdb_imgs';
edb_img = 'C:\Users\shaya\Desktop\Signal_Text\edb_imgs';
vfdb_img = 'C:\Users\shaya\Desktop\Signal_Text\vfdb_imgs';

afdb_dir = dir(afdb_text);
edb_dir = dir(edb_text);
vfdb_dir = dir(vfdb_text);

for ix = 3:length(afdb_dir)
    Signal = importdata([afdb_text,'\',afdb_dir(ix).name]);
    fig_id = figure('visible','off'); plot(Signal,'LineWidth',1.25);
    saveas(fig_id,['C:\Users\shaya\Desktop\Signal_Text\Temp\Temp_Sig.png']);
    Img1 = imread(['C:\Users\shaya\Desktop\Signal_Text\Temp\Temp_Sig.png']);
    Img2 = imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]
    imwrite(Img2,[afdb_img,'\',afdb_dir(ix).name,'.png']);
    close all; clc; fclose('all');
end

for ix = 3:length(edb_dir)
    Signal = importdata([edb_text,'\',edb_dir(ix).name]);
    fig_id = figure('visible','off'); plot(Signal,'LineWidth',1.25);
    saveas(fig_id,['C:\Users\shaya\Desktop\Signal_Text\Temp\Temp_Sig.png']);
    Img1 = imread(['C:\Users\shaya\Desktop\Signal_Text\Temp\Temp_Sig.png']);
    Img2 = imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]
    imwrite(Img2,[edb_img,'\',edb_dir(ix).name,'.png']);
    close all; clc; fclose('all');
end

for ix = 3:length(vfdb_dir)
    Signal = importdata([vfdb_text,'\',vfdb_dir(ix).name]);
    fig_id = figure('visible','off'); plot(Signal,'LineWidth',1.25);
    saveas(fig_id,['C:\Users\shaya\Desktop\Signal_Text\Temp\Temp_Sig.png']);
    Img1 = imread(['C:\Users\shaya\Desktop\Signal_Text\Temp\Temp_Sig.png']);
    Img2 = imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]
    imwrite(Img2,[vfdb_img,'\',vfdb_dir(ix).name,'.png']);
    close all; clc; fclose('all');
end
