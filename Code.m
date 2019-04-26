clear all; close all; clc;
DataX = importdata('C:\Users\shaya\Desktop\ECG Work\ECG Dataset\RAW ECG database\RAW ECG database\Control\Con_1.txt');
DataY = importdata('C:\Users\shaya\Desktop\ECG Dataset\Con_1.txt');

DataX = DataX(4782:6190);
DataY = DataY(6166:7366,2);
figure(); plot(DataX,'k','LineWidth',1.5);
figure(); plot(DataY,'k','LineWidth',1.5);

DataX = DataX(30:1390);
Numb = sqrt(length(DataX));
for rowX = 1:Numb
    if (mod(rowX,2) ~= 0)
        MatX(rowX,1:Numb) = DataX(Numb*(rowX-1)+1:Numb*(rowX-1)+Numb);
    else
        MatX(rowX,1:Numb) = fliplr(DataX(Numb*(rowX-1)+1:Numb*(rowX-1)+Numb));
    end
end
plot(DataX,'k','LineWidth',1);
Img = mat2gray(MatX);
figure; imshow(Img);

DataX = DataX(3050:3000+2966-1);
Numb = sqrt(length(DataX));
for rowX = 1:Numb
    if (mod(rowX,2) ~= 0)
        MatX(rowX,1:Numb) = DataX(Numb*(rowX-1)+1:Numb*(rowX-1)+Numb);
    else
        MatX(rowX,1:Numb) = fliplr(DataX(Numb*(rowX-1)+1:Numb*(rowX-1)+Numb));
    end
end
plot(DataX,'k','LineWidth',1.5);
Img = mat2gray(MatX);
figure; imshow(Img);