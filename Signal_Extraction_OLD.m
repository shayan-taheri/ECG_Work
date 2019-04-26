clear all; close all; clc; fclose('all');
Image_Path = 'C:\Users\shaya\Desktop\Images';
% Abdominal and Direct Fetal Electrocardiogram Database
% Contains multichannel fetal electrocardiogram (FECG) recordings
% Obtained from 5 different women in labor, between 38 and 41 weeks
% -----------------------------------------------------------------
% Getting Data
addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\edfreadZip');
Path = 'C:\Users\shaya\Desktop\Datasets\adfecgdb';
[hdr1,record1] = edfread([Path,'\r01.edf']);
[hdr2,record2] = edfread([Path,'\r04.edf']);
[hdr3,record3] = edfread([Path,'\r07.edf']);
[hdr4,record4] = edfread([Path,'\r08.edf']);

% Separating Signals
adfecgdb_Sig01 = record1(1,4.434e4:4.572e4);
adfecgdb_Sig02 = record1(2,1.341e5:1.3605e5);
adfecgdb_Sig03 = record1(3,1.396e5:1.408e5);
adfecgdb_Sig04 = record1(4,1.198e5:1.218e5);
adfecgdb_Sig05 = record1(5,1.282e5:1.303e5);

adfecgdb_Sig06 = record2(1,5.346e4:5.486e4);
adfecgdb_Sig07 = record2(2,7.626e4:7.793e4);
adfecgdb_Sig08 = record2(3,8.098e4:8.267e4);
adfecgdb_Sig09 = record2(4,8.274e4:8.446e4);
adfecgdb_Sig10 = record2(5,8.51e4:8.68e4);

adfecgdb_Sig11 = record3(1,1.612e5:1.626e5);
adfecgdb_Sig12 = record3(2,3.362e4:3.598e4);
adfecgdb_Sig13 = record3(3,1.692e5:1.715e5);
adfecgdb_Sig14 = record3(4,1.956e5:1.978e5);
adfecgdb_Sig15 = record3(5,6.571e4:6.778e4);

adfecgdb_Sig16 = record4(1,8.353e4:8.489e4);
adfecgdb_Sig17 = record4(2,1.043e5:1.064e5);
adfecgdb_Sig18 = record4(3,1.075e5:1.088e5);
adfecgdb_Sig19 = record4(4,1.454e5:1.476e5);
adfecgdb_Sig20 = record4(5,1.502e5:1.526e5);

for ix = 1:20
    if ix <= 9
        fig_id = figure(); plot(eval(['adfecgdb_Sig0',num2str(ix)]));
        saveas(fig_id,[Image_Path,'\adfecgdb\','Sig0',num2str(ix),'.jpg']);
        fig_id = figure(); spectrogram(eval(['adfecgdb_Sig0',num2str(ix)]));
        saveas(fig_id,[Image_Path,'\adfecgdb\','Spec0',num2str(ix),'.jpg']);
    else
        fig_id = figure(); plot(eval(['adfecgdb_Sig',num2str(ix)]));
        saveas(fig_id,[Image_Path,'\adfecgdb\','Sig',num2str(ix),'.jpg']);
        fig_id = figure(); spectrogram(eval(['adfecgdb_Sig',num2str(ix)]));
        saveas(fig_id,[Image_Path,'\adfecgdb\','Spec',num2str(ix),'.jpg']);
    end
end

clear hdr1;
clear hdr2;
clear hdr3;
clear hdr4
clear Path;

close all; clc; fclose('all');
% ---------------------------------------------------------------------
addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\afdb';
addpath(Path);
filename = '08455.dat';
fid=fopen([Path,'\',filename],'r');
afdb_Sig01 = fread(fid);
afdb_Sig01 = afdb_Sig01';
afdb_Sig01 = afdb_Sig01(3.9e6:3.912e6);

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\afdb';
addpath(Path);
filename = '08434.dat';
fid=fopen([Path,'\',filename],'r');
afdb_Sig02 = fread(fid);
afdb_Sig02 = afdb_Sig02';
afdb_Sig02 = afdb_Sig02(3.907e6:3.9305e6);

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\afdb';
addpath(Path);
filename = '08405.dat';
fid=fopen([Path,'\',filename],'r');
afdb_Sig03 = fread(fid);
afdb_Sig03 = afdb_Sig03';
afdb_Sig03 = afdb_Sig03(3.303e6:3.304e6);

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\afdb';
addpath(Path);
filename = '08378.dat';
fid=fopen([Path,'\',filename],'r');
afdb_Sig04 = fread(fid);
afdb_Sig04 = afdb_Sig04';
afdb_Sig04 = afdb_Sig04(3.16e6:3.1605e6);

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\afdb';
addpath(Path);
filename = '08219.dat';
fid=fopen([Path,'\',filename],'r');
afdb_Sig05 = fread(fid);
afdb_Sig05 = afdb_Sig05';
afdb_Sig05 = afdb_Sig05(4.0047e6:4.005e6);

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\afdb';
addpath(Path);
filename = '08215.dat';
fid=fopen([Path,'\',filename],'r');
afdb_Sig06 = fread(fid);
afdb_Sig06 = afdb_Sig06';
afdb_Sig06 = afdb_Sig06(3.1697e6:3.172e6);
afdb_Sig06 = afdb_Sig06(551:1132);

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\afdb';
addpath(Path);
filename = '07910.dat';
fid=fopen([Path,'\',filename],'r');
afdb_Sig07 = fread(fid);
afdb_Sig07 = afdb_Sig07';
afdb_Sig07 = afdb_Sig07(3.38e6:3.381e6);
afdb_Sig07 = afdb_Sig07(37:950);

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\afdb';
addpath(Path);
filename = '07879.dat';
fid=fopen([Path,'\',filename],'r');
afdb_Sig08 = fread(fid);
afdb_Sig08 = afdb_Sig08';
afdb_Sig08 = afdb_Sig08(5.582e6:5.593e6);
afdb_Sig08 = afdb_Sig08(1:10000);

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\afdb';
addpath(Path);
filename = '07859.dat';
fid=fopen([Path,'\',filename],'r');
afdb_Sig09 = fread(fid);
afdb_Sig09 = afdb_Sig09';
afdb_Sig09 = afdb_Sig09(9.419e6:9.42e6);
afdb_Sig09 = afdb_Sig09(342:900);

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\afdb';
addpath(Path);
filename = '07162.dat';
fid=fopen([Path,'\',filename],'r');
afdb_Sig10 = fread(fid);
afdb_Sig10 = afdb_Sig10';
afdb_Sig10 = afdb_Sig10(1.0894e7:1.08947e7);
afdb_Sig10 = afdb_Sig10(31:end);

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\afdb';
addpath(Path);
filename = '05261.dat';
fid=fopen([Path,'\',filename],'r');
afdb_Sig11 = fread(fid);
afdb_Sig11 = afdb_Sig11';
afdb_Sig11 = afdb_Sig11(1.92465e7:1.9251e7);

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\afdb';
addpath(Path);
filename = '05121.dat';
fid=fopen([Path,'\',filename],'r');
afdb_Sig12 = fread(fid);
afdb_Sig12 = afdb_Sig12';
afdb_Sig12 = afdb_Sig12(3.156e6:3.183e6);

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\afdb';
addpath(Path);
filename = '04126.dat';
fid=fopen([Path,'\',filename],'r');
afdb_Sig13 = fread(fid);
afdb_Sig13 = afdb_Sig13';
afdb_Sig13 = afdb_Sig13(3.7453e6:3.746e6);

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\afdb';
addpath(Path);
filename = '04048.dat';
fid=fopen([Path,'\',filename],'r');
afdb_Sig14 = fread(fid);
afdb_Sig14 = afdb_Sig14';
afdb_Sig14 = afdb_Sig14(5.8251e6:5.826e6);

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\afdb';
addpath(Path);
filename = '04043.dat';
fid=fopen([Path,'\',filename],'r');
afdb_Sig15 = fread(fid);
afdb_Sig15 = afdb_Sig15';
afdb_Sig15 = afdb_Sig15(4.221e6:4.2225e6);
afdb_Sig15 = afdb_Sig15(1:600);

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\afdb';
addpath(Path);
filename = '04015.dat';
fid=fopen([Path,'\',filename],'r');
afdb_Sig16 = fread(fid);
afdb_Sig16 = afdb_Sig16';
afdb_Sig16 = afdb_Sig16(3.40995e6:3.4105e6);

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\afdb';
addpath(Path);
filename = '06426.dat';
fid=fopen([Path,'\',filename],'r');
afdb_Sig17 = fread(fid);
afdb_Sig17 = afdb_Sig17';
afdb_Sig17 = afdb_Sig17(1.76315e7:1.76323e7);
afdb_Sig17 = afdb_Sig17(1:700);

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\afdb';
addpath(Path);
filename = '06995.dat';
fid=fopen([Path,'\',filename],'r');
afdb_Sig18 = fread(fid);
afdb_Sig18 = afdb_Sig18';
afdb_Sig18 = afdb_Sig18(2.07016e7:2.07025e7);
afdb_Sig18 = afdb_Sig18(1:500);

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\afdb';
addpath(Path);
filename = '05091.dat';
fid=fopen([Path,'\',filename],'r');
afdb_Sig19 = fread(fid);
afdb_Sig19 = afdb_Sig19';
afdb_Sig19 = afdb_Sig19(6.7527e6:6.7536e6);

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\afdb';
addpath(Path);
filename = '04908.dat';
fid=fopen([Path,'\',filename],'r');
afdb_Sig20 = fread(fid);
afdb_Sig20 = afdb_Sig20';
afdb_Sig20 = afdb_Sig20(1.919e6:1.92e6);
afdb_Sig20 = afdb_Sig20(363:769);

for ix = 1:20
    if ix <= 9
        fig_id = figure(); plot(eval(['afdb_Sig0',num2str(ix)]));
        saveas(fig_id,[Image_Path,'\afdb\','Sig0',num2str(ix),'.jpg']);
        fig_id = figure(); spectrogram(eval(['afdb_Sig0',num2str(ix)]));
        saveas(fig_id,[Image_Path,'\afdb\','Spec0',num2str(ix),'.jpg']);
    else
        fig_id = figure(); plot(eval(['afdb_Sig',num2str(ix)]));
        saveas(fig_id,[Image_Path,'\afdb\','Sig',num2str(ix),'.jpg']);
        fig_id = figure(); spectrogram(eval(['afdb_Sig',num2str(ix)]));
        saveas(fig_id,[Image_Path,'\afdb\','Spec',num2str(ix),'.jpg']);
    end
end

close all; clc; fclose('all');
% ---------------------------------------------------------------------
addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\aftdb\learning-set';
addpath(Path);
filename = 'n01.dat';
fid=fopen([Path,'\',filename],'r');
aftdb_Sig01 = fread(fid);
aftdb_Sig01 = aftdb_Sig01';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\aftdb\learning-set';
addpath(Path);
filename = 'n02.dat';
fid=fopen([Path,'\',filename],'r');
aftdb_Sig02 = fread(fid);
aftdb_Sig02 = aftdb_Sig02';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\aftdb\learning-set';
addpath(Path);
filename = 'n03.dat';
fid=fopen([Path,'\',filename],'r');
aftdb_Sig03 = fread(fid);
aftdb_Sig03 = aftdb_Sig03';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\aftdb\learning-set';
addpath(Path);
filename = 'n04.dat';
fid=fopen([Path,'\',filename],'r');
aftdb_Sig04 = fread(fid);
aftdb_Sig04 = aftdb_Sig04';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\aftdb\learning-set';
addpath(Path);
filename = 'n05.dat';
fid=fopen([Path,'\',filename],'r');
aftdb_Sig05 = fread(fid);
aftdb_Sig05 = aftdb_Sig05';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\aftdb\learning-set';
addpath(Path);
filename = 'n06.dat';
fid=fopen([Path,'\',filename],'r');
aftdb_Sig06 = fread(fid);
aftdb_Sig06 = aftdb_Sig06';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\aftdb\learning-set';
addpath(Path);
filename = 'n07.dat';
fid=fopen([Path,'\',filename],'r');
aftdb_Sig07 = fread(fid);
aftdb_Sig07 = aftdb_Sig07';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\aftdb\learning-set';
addpath(Path);
filename = 'n08.dat';
fid=fopen([Path,'\',filename],'r');
aftdb_Sig08 = fread(fid);
aftdb_Sig08 = aftdb_Sig08';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\aftdb\learning-set';
addpath(Path);
filename = 'n09.dat';
fid=fopen([Path,'\',filename],'r');
aftdb_Sig09 = fread(fid);
aftdb_Sig09 = aftdb_Sig09';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\aftdb\learning-set';
addpath(Path);
filename = 'n10.dat';
fid=fopen([Path,'\',filename],'r');
aftdb_Sig10 = fread(fid);
aftdb_Sig10 = aftdb_Sig10';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\aftdb\learning-set';
addpath(Path);
filename = 's01.dat';
fid=fopen([Path,'\',filename],'r');
aftdb_Sig11 = fread(fid);
aftdb_Sig11 = aftdb_Sig11';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\aftdb\learning-set';
addpath(Path);
filename = 's02.dat';
fid=fopen([Path,'\',filename],'r');
aftdb_Sig12 = fread(fid);
aftdb_Sig12 = aftdb_Sig12';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\aftdb\learning-set';
addpath(Path);
filename = 's03.dat';
fid=fopen([Path,'\',filename],'r');
aftdb_Sig13 = fread(fid);
aftdb_Sig13 = aftdb_Sig13';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\aftdb\learning-set';
addpath(Path);
filename = 's04.dat';
fid=fopen([Path,'\',filename],'r');
aftdb_Sig14 = fread(fid);
aftdb_Sig14 = aftdb_Sig14';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\aftdb\learning-set';
addpath(Path);
filename = 's05.dat';
fid=fopen([Path,'\',filename],'r');
aftdb_Sig15 = fread(fid);
aftdb_Sig15 = aftdb_Sig15';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\aftdb\learning-set';
addpath(Path);
filename = 's06.dat';
fid=fopen([Path,'\',filename],'r');
aftdb_Sig16 = fread(fid);
aftdb_Sig16 = aftdb_Sig16';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\aftdb\learning-set';
addpath(Path);
filename = 's07.dat';
fid=fopen([Path,'\',filename],'r');
aftdb_Sig17 = fread(fid);
aftdb_Sig17 = aftdb_Sig17';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\aftdb\learning-set';
addpath(Path);
filename = 's08.dat';
fid=fopen([Path,'\',filename],'r');
aftdb_Sig18 = fread(fid);
aftdb_Sig18 = aftdb_Sig18';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\aftdb\learning-set';
addpath(Path);
filename = 's09.dat';
fid=fopen([Path,'\',filename],'r');
aftdb_Sig19 = fread(fid);
aftdb_Sig19 = aftdb_Sig19';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\aftdb\learning-set';
addpath(Path);
filename = 's10.dat';
fid=fopen([Path,'\',filename],'r');
aftdb_Sig20 = fread(fid);
aftdb_Sig20 = aftdb_Sig20';

close all; clc; fclose('all');
% ---------------------------------------------------------------------
addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\apnea-ecg';
addpath(Path);
filename = 'a01.dat';
fid=fopen([Path,'\',filename],'r');
apnea_ecg_Sig01 = fread(fid);
apnea_ecg_Sig01 = apnea_ecg_Sig01';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\apnea-ecg';
addpath(Path);
filename = 'a02.dat';
fid=fopen([Path,'\',filename],'r');
apnea_ecg_Sig02 = fread(fid);
apnea_ecg_Sig02 = apnea_ecg_Sig02';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\apnea-ecg';
addpath(Path);
filename = 'a03.dat';
fid=fopen([Path,'\',filename],'r');
apnea_ecg_Sig03 = fread(fid);
apnea_ecg_Sig03 = apnea_ecg_Sig03';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\apnea-ecg';
addpath(Path);
filename = 'a04.dat';
fid=fopen([Path,'\',filename],'r');
apnea_ecg_Sig04 = fread(fid);
apnea_ecg_Sig04 = apnea_ecg_Sig04';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\apnea-ecg';
addpath(Path);
filename = 'a05.dat';
fid=fopen([Path,'\',filename],'r');
apnea_ecg_Sig05 = fread(fid);
apnea_ecg_Sig05 = apnea_ecg_Sig05';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\apnea-ecg';
addpath(Path);
filename = 'a06.dat';
fid=fopen([Path,'\',filename],'r');
apnea_ecg_Sig06 = fread(fid);
apnea_ecg_Sig06 = apnea_ecg_Sig06';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\apnea-ecg';
addpath(Path);
filename = 'a07.dat';
fid=fopen([Path,'\',filename],'r');
apnea_ecg_Sig07 = fread(fid);
apnea_ecg_Sig07 = apnea_ecg_Sig07';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\apnea-ecg';
addpath(Path);
filename = 'a08.dat';
fid=fopen([Path,'\',filename],'r');
apnea_ecg_Sig08 = fread(fid);
apnea_ecg_Sig08 = apnea_ecg_Sig08';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\apnea-ecg';
addpath(Path);
filename = 'a09.dat';
fid=fopen([Path,'\',filename],'r');
apnea_ecg_Sig09 = fread(fid);
apnea_ecg_Sig09 = apnea_ecg_Sig09';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\apnea-ecg';
addpath(Path);
filename = 'a10.dat';
fid=fopen([Path,'\',filename],'r');
apnea_ecg_Sig10 = fread(fid);
apnea_ecg_Sig10 = apnea_ecg_Sig10';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\apnea-ecg';
addpath(Path);
filename = 'a11.dat';
fid=fopen([Path,'\',filename],'r');
apnea_ecg_Sig11 = fread(fid);
apnea_ecg_Sig11 = apnea_ecg_Sig11';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\apnea-ecg';
addpath(Path);
filename = 'a12.dat';
fid=fopen([Path,'\',filename],'r');
apnea_ecg_Sig12 = fread(fid);
apnea_ecg_Sig12 = apnea_ecg_Sig12';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\apnea-ecg';
addpath(Path);
filename = 'a13.dat';
fid=fopen([Path,'\',filename],'r');
apnea_ecg_Sig13 = fread(fid);
apnea_ecg_Sig13 = apnea_ecg_Sig13';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\apnea-ecg';
addpath(Path);
filename = 'a14.dat';
fid=fopen([Path,'\',filename],'r');
apnea_ecg_Sig14 = fread(fid);
apnea_ecg_Sig14 = apnea_ecg_Sig14';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\apnea-ecg';
addpath(Path);
filename = 'a15.dat';
fid=fopen([Path,'\',filename],'r');
apnea_ecg_Sig15 = fread(fid);
apnea_ecg_Sig15 = apnea_ecg_Sig15';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\apnea-ecg';
addpath(Path);
filename = 'a16.dat';
fid=fopen([Path,'\',filename],'r');
apnea_ecg_Sig16 = fread(fid);
apnea_ecg_Sig16 = apnea_ecg_Sig16';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\apnea-ecg';
addpath(Path);
filename = 'a17.dat';
fid=fopen([Path,'\',filename],'r');
apnea_ecg_Sig17 = fread(fid);
apnea_ecg_Sig17 = apnea_ecg_Sig17';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\apnea-ecg';
addpath(Path);
filename = 'a18.dat';
fid=fopen([Path,'\',filename],'r');
apnea_ecg_Sig18 = fread(fid);
apnea_ecg_Sig18 = apnea_ecg_Sig18';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\apnea-ecg';
addpath(Path);
filename = 'a19.dat';
fid=fopen([Path,'\',filename],'r');
apnea_ecg_Sig19 = fread(fid);
apnea_ecg_Sig19 = apnea_ecg_Sig19';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\apnea-ecg';
addpath(Path);
filename = 'a20.dat';
fid=fopen([Path,'\',filename],'r');
apnea_ecg_Sig20 = fread(fid);
apnea_ecg_Sig20 = apnea_ecg_Sig20';

clear fid; clear filename; clear hdr1; clear hdr2;
clear hdr3; clear hdr4; clear Path;

close all; clc; fclose('all');
% ---------------------------------------------------------------------
addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\cdb';
addpath(Path);
filename = '13585_08.dat';
fid=fopen([Path,'\',filename],'r'); 
cdb_Sig01 = fread(fid);
cdb_Sig01 = cdb_Sig01';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\cdb';
addpath(Path);
filename = '13590_01.dat';
fid=fopen([Path,'\',filename],'r'); 
cdb_Sig02 = fread(fid);
cdb_Sig02 = cdb_Sig02';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\cdb';
addpath(Path);
filename = '13590_02.dat';
fid=fopen([Path,'\',filename],'r'); 
cdb_Sig03 = fread(fid);
cdb_Sig03 = cdb_Sig03';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\cdb';
addpath(Path);
filename = '13590_03.dat';
fid=fopen([Path,'\',filename],'r'); 
cdb_Sig04 = fread(fid);
cdb_Sig04 = cdb_Sig04';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\cdb';
addpath(Path);
filename = '13590_04.dat';
fid=fopen([Path,'\',filename],'r'); 
cdb_Sig05 = fread(fid);
cdb_Sig05 = cdb_Sig05';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\cdb';
addpath(Path);
filename = '13590_05.dat';
fid=fopen([Path,'\',filename],'r'); 
cdb_Sig06 = fread(fid);
cdb_Sig06 = cdb_Sig06';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\cdb';
addpath(Path);
filename = '13590_06.dat';
fid=fopen([Path,'\',filename],'r'); 
cdb_Sig07 = fread(fid);
cdb_Sig07 = cdb_Sig07';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\cdb';
addpath(Path);
filename = '13649_01.dat';
fid=fopen([Path,'\',filename],'r'); 
cdb_Sig08 = fread(fid);
cdb_Sig08 = cdb_Sig08';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\cdb';
addpath(Path);
filename = '13649_02.dat';
fid=fopen([Path,'\',filename],'r'); 
cdb_Sig09 = fread(fid);
cdb_Sig09 = cdb_Sig09';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\cdb';
addpath(Path);
filename = '13649_03.dat';
fid=fopen([Path,'\',filename],'r'); 
cdb_Sig10 = fread(fid);
cdb_Sig10 = cdb_Sig10';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\cdb';
addpath(Path);
filename = '13649_04.dat';
fid=fopen([Path,'\',filename],'r'); 
cdb_Sig11 = fread(fid);
cdb_Sig11 = cdb_Sig11';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\cdb';
addpath(Path);
filename = '13687_01.dat';
fid=fopen([Path,'\',filename],'r'); 
cdb_Sig12 = fread(fid);
cdb_Sig12 = cdb_Sig12';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\cdb';
addpath(Path);
filename = '13687_02.dat';
fid=fopen([Path,'\',filename],'r'); 
cdb_Sig13 = fread(fid);
cdb_Sig13 = cdb_Sig13';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\cdb';
addpath(Path);
filename = '13687_03.dat';
fid=fopen([Path,'\',filename],'r'); 
cdb_Sig14 = fread(fid);
cdb_Sig14 = cdb_Sig14';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\cdb';
addpath(Path);
filename = '13687_04.dat';
fid=fopen([Path,'\',filename],'r'); 
cdb_Sig15 = fread(fid);
cdb_Sig15 = cdb_Sig15';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\cdb';
addpath(Path);
filename = '13543_05.dat';
fid=fopen([Path,'\',filename],'r'); 
cdb_Sig16 = fread(fid);
cdb_Sig16 = cdb_Sig16';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\cdb';
addpath(Path);
filename = '13543_06.dat';
fid=fopen([Path,'\',filename],'r'); 
cdb_Sig17 = fread(fid);
cdb_Sig17 = cdb_Sig17';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\cdb';
addpath(Path);
filename = '13556_01.dat';
fid=fopen([Path,'\',filename],'r'); 
cdb_Sig18 = fread(fid);
cdb_Sig18 = cdb_Sig18';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\cdb';
addpath(Path);
filename = '13556_02.dat';
fid=fopen([Path,'\',filename],'r'); 
cdb_Sig19 = fread(fid);
cdb_Sig19 = cdb_Sig19';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\cdb';
addpath(Path);
filename = '13556_03.dat';
fid=fopen([Path,'\',filename],'r'); 
cdb_Sig20 = fread(fid);
cdb_Sig20 = cdb_Sig20';

close all; clc; fclose('all');
% ---------------------------------------------------------------------
addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltafdb';
addpath(Path);
filename = '100.dat';
fid=fopen([Path,'\',filename],'r'); 
ltafdb_Sig01 = fread(fid);
ltafdb_Sig01 = ltafdb_Sig01';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltafdb';
addpath(Path);
filename = '101.dat';
fid=fopen([Path,'\',filename],'r'); 
ltafdb_Sig02 = fread(fid);
ltafdb_Sig02 = ltafdb_Sig02';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltafdb';
addpath(Path);
filename = '102.dat';
fid=fopen([Path,'\',filename],'r'); 
ltafdb_Sig03 = fread(fid);
ltafdb_Sig03 = ltafdb_Sig03';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltafdb';
addpath(Path);
filename = '103.dat';
fid=fopen([Path,'\',filename],'r'); 
ltafdb_Sig04 = fread(fid);
ltafdb_Sig04 = ltafdb_Sig04';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltafdb';
addpath(Path);
filename = '104.dat';
fid=fopen([Path,'\',filename],'r'); 
ltafdb_Sig05 = fread(fid);
ltafdb_Sig05 = ltafdb_Sig05';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltafdb';
addpath(Path);
filename = '105.dat';
fid=fopen([Path,'\',filename],'r'); 
ltafdb_Sig06 = fread(fid);
ltafdb_Sig06 = ltafdb_Sig06';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltafdb';
addpath(Path);
filename = '110.dat';
fid=fopen([Path,'\',filename],'r'); 
ltafdb_Sig07 = fread(fid);
ltafdb_Sig07 = ltafdb_Sig07';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltafdb';
addpath(Path);
filename = '111.dat';
fid=fopen([Path,'\',filename],'r'); 
ltafdb_Sig08 = fread(fid);
ltafdb_Sig08 = ltafdb_Sig08';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltafdb';
addpath(Path);
filename = '112.dat';
fid=fopen([Path,'\',filename],'r'); 
ltafdb_Sig09 = fread(fid);
ltafdb_Sig09 = ltafdb_Sig09';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltafdb';
addpath(Path);
filename = '113.dat';
fid=fopen([Path,'\',filename],'r'); 
ltafdb_Sig10 = fread(fid);
ltafdb_Sig10 = ltafdb_Sig10';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltafdb';
addpath(Path);
filename = '114.dat';
fid=fopen([Path,'\',filename],'r'); 
ltafdb_Sig11 = fread(fid);
ltafdb_Sig11 = ltafdb_Sig11';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltafdb';
addpath(Path);
filename = '115.dat';
fid=fopen([Path,'\',filename],'r'); 
ltafdb_Sig12 = fread(fid);
ltafdb_Sig12 = ltafdb_Sig12';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltafdb';
addpath(Path);
filename = '116.dat';
fid=fopen([Path,'\',filename],'r'); 
ltafdb_Sig13 = fread(fid);
ltafdb_Sig13 = ltafdb_Sig13';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltafdb';
addpath(Path);
filename = '117.dat';
fid=fopen([Path,'\',filename],'r'); 
ltafdb_Sig14 = fread(fid);
ltafdb_Sig14 = ltafdb_Sig14';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltafdb';
addpath(Path);
filename = '118.dat';
fid=fopen([Path,'\',filename],'r'); 
ltafdb_Sig15 = fread(fid);
ltafdb_Sig15 = ltafdb_Sig15';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltafdb';
addpath(Path);
filename = '119.dat';
fid=fopen([Path,'\',filename],'r'); 
ltafdb_Sig16 = fread(fid);
ltafdb_Sig16 = ltafdb_Sig16';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltafdb';
addpath(Path);
filename = '120.dat';
fid=fopen([Path,'\',filename],'r'); 
ltafdb_Sig17 = fread(fid);
ltafdb_Sig17 = ltafdb_Sig17';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltafdb';
addpath(Path);
filename = '121.dat';
fid=fopen([Path,'\',filename],'r'); 
ltafdb_Sig18 = fread(fid);
ltafdb_Sig18 = ltafdb_Sig18';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltafdb';
addpath(Path);
filename = '122.dat';
fid=fopen([Path,'\',filename],'r'); 
ltafdb_Sig19 = fread(fid);
ltafdb_Sig19 = ltafdb_Sig19';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltafdb';
addpath(Path);
filename = '200.dat';
fid=fopen([Path,'\',filename],'r'); 
ltafdb_Sig20 = fread(fid);
ltafdb_Sig20 = ltafdb_Sig20';

close all; clc; fclose('all');
% ---------------------------------------------------------------------
addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltstdb';
addpath(Path);
filename = 's20011.dat';
fid=fopen([Path,'\',filename],'r'); 
ltstdb_Sig01 = fread(fid);
ltstdb_Sig01 = ltstdb_Sig01';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltstdb';
addpath(Path);
filename = 's20021.dat';
fid=fopen([Path,'\',filename],'r'); 
ltstdb_Sig02 = fread(fid);
ltstdb_Sig02 = ltstdb_Sig02';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltstdb';
addpath(Path);
filename = 's20031.dat';
fid=fopen([Path,'\',filename],'r'); 
ltstdb_Sig03 = fread(fid);
ltstdb_Sig03 = ltstdb_Sig03';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltstdb';
addpath(Path);
filename = 's20041.dat';
fid=fopen([Path,'\',filename],'r'); 
ltstdb_Sig04 = fread(fid);
ltstdb_Sig04 = ltstdb_Sig04';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltstdb';
addpath(Path);
filename = 's20061.dat';
fid=fopen([Path,'\',filename],'r'); 
ltstdb_Sig05 = fread(fid);
ltstdb_Sig05 = ltstdb_Sig05';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltstdb';
addpath(Path);
filename = 's20081.dat';
fid=fopen([Path,'\',filename],'r'); 
ltstdb_Sig06 = fread(fid);
ltstdb_Sig06 = ltstdb_Sig06';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltstdb';
addpath(Path);
filename = 's20101.dat';
fid=fopen([Path,'\',filename],'r'); 
ltstdb_Sig07 = fread(fid);
ltstdb_Sig07 = ltstdb_Sig07';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltstdb';
addpath(Path);
filename = 's20121.dat';
fid=fopen([Path,'\',filename],'r'); 
ltstdb_Sig08 = fread(fid);
ltstdb_Sig08 = ltstdb_Sig08';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltstdb';
addpath(Path);
filename = 's20141.dat';
fid=fopen([Path,'\',filename],'r'); 
ltstdb_Sig09 = fread(fid);
ltstdb_Sig09 = ltstdb_Sig09';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltstdb';
addpath(Path);
filename = 's20161.dat';
fid=fopen([Path,'\',filename],'r'); 
ltstdb_Sig10 = fread(fid);
ltstdb_Sig10 = ltstdb_Sig10';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltstdb';
addpath(Path);
filename = 's20181.dat';
fid=fopen([Path,'\',filename],'r'); 
ltstdb_Sig11 = fread(fid);
ltstdb_Sig11 = ltstdb_Sig11';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltstdb';
addpath(Path);
filename = 's20201.dat';
fid=fopen([Path,'\',filename],'r'); 
ltstdb_Sig12 = fread(fid);
ltstdb_Sig12 = ltstdb_Sig12';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltstdb';
addpath(Path);
filename = 's20221.dat';
fid=fopen([Path,'\',filename],'r'); 
ltstdb_Sig13 = fread(fid);
ltstdb_Sig13 = ltstdb_Sig13';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltstdb';
addpath(Path);
filename = 's20241.dat';
fid=fopen([Path,'\',filename],'r'); 
ltstdb_Sig14 = fread(fid);
ltstdb_Sig14 = ltstdb_Sig14';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltstdb';
addpath(Path);
filename = 's20261.dat';
fid=fopen([Path,'\',filename],'r'); 
ltstdb_Sig15 = fread(fid);
ltstdb_Sig15 = ltstdb_Sig15';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltstdb';
addpath(Path);
filename = 's20281.dat';
fid=fopen([Path,'\',filename],'r'); 
ltstdb_Sig16 = fread(fid);
ltstdb_Sig16 = ltstdb_Sig16';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltstdb';
addpath(Path);
filename = 's20301.dat';
fid=fopen([Path,'\',filename],'r'); 
ltstdb_Sig17 = fread(fid);
ltstdb_Sig17 = ltstdb_Sig17';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltstdb';
addpath(Path);
filename = 's20321.dat';
fid=fopen([Path,'\',filename],'r'); 
ltstdb_Sig18 = fread(fid);
ltstdb_Sig18 = ltstdb_Sig18';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltstdb';
addpath(Path);
filename = 's20341.dat';
fid=fopen([Path,'\',filename],'r'); 
ltstdb_Sig19 = fread(fid);
ltstdb_Sig19 = ltstdb_Sig19';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\ltstdb';
addpath(Path);
filename = 's20361.dat';
fid=fopen([Path,'\',filename],'r'); 
ltstdb_Sig20 = fread(fid);
ltstdb_Sig20 = ltstdb_Sig20';

close all; clc; fclose('all');
% ---------------------------------------------------------------------
addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\mitdb';
addpath(Path);
filename = '100.dat';
fid=fopen([Path,'\',filename],'r'); 
mitdb_Sig01 = fread(fid);
mitdb_Sig01 = mitdb_Sig01';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\mitdb';
addpath(Path);
filename = '101.dat';
fid=fopen([Path,'\',filename],'r'); 
mitdb_Sig02 = fread(fid);
mitdb_Sig02 = mitdb_Sig02';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\mitdb';
addpath(Path);
filename = '102.dat';
fid=fopen([Path,'\',filename],'r'); 
mitdb_Sig03 = fread(fid);
mitdb_Sig03 = mitdb_Sig03';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\mitdb';
addpath(Path);
filename = '103.dat';
fid=fopen([Path,'\',filename],'r'); 
mitdb_Sig04 = fread(fid);
mitdb_Sig04 = mitdb_Sig04';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\mitdb';
addpath(Path);
filename = '104.dat';
fid=fopen([Path,'\',filename],'r'); 
mitdb_Sig05 = fread(fid);
mitdb_Sig05 = mitdb_Sig05';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\mitdb';
addpath(Path);
filename = '105.dat';
fid=fopen([Path,'\',filename],'r'); 
mitdb_Sig06 = fread(fid);
mitdb_Sig06 = mitdb_Sig06';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\mitdb';
addpath(Path);
filename = '106.dat';
fid=fopen([Path,'\',filename],'r'); 
mitdb_Sig07 = fread(fid);
mitdb_Sig07 = mitdb_Sig07';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\mitdb';
addpath(Path);
filename = '107.dat';
fid=fopen([Path,'\',filename],'r'); 
mitdb_Sig08 = fread(fid);
mitdb_Sig08 = mitdb_Sig08';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\mitdb';
addpath(Path);
filename = '108.dat';
fid=fopen([Path,'\',filename],'r'); 
mitdb_Sig09 = fread(fid);
mitdb_Sig09 = mitdb_Sig09';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\mitdb';
addpath(Path);
filename = '109.dat';
fid=fopen([Path,'\',filename],'r'); 
mitdb_Sig10 = fread(fid);
mitdb_Sig10 = mitdb_Sig10';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\mitdb';
addpath(Path);
filename = '111.dat';
fid=fopen([Path,'\',filename],'r'); 
mitdb_Sig11 = fread(fid);
mitdb_Sig11 = mitdb_Sig11';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\mitdb';
addpath(Path);
filename = '112.dat';
fid=fopen([Path,'\',filename],'r'); 
mitdb_Sig12 = fread(fid);
mitdb_Sig12 = mitdb_Sig12';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\mitdb';
addpath(Path);
filename = '113.dat';
fid=fopen([Path,'\',filename],'r'); 
mitdb_Sig13 = fread(fid);
mitdb_Sig13 = mitdb_Sig13';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\mitdb';
addpath(Path);
filename = '114.dat';
fid=fopen([Path,'\',filename],'r'); 
mitdb_Sig14 = fread(fid);
mitdb_Sig14 = mitdb_Sig14';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\mitdb';
addpath(Path);
filename = '115.dat';
fid=fopen([Path,'\',filename],'r'); 
mitdb_Sig15 = fread(fid);
mitdb_Sig15 = mitdb_Sig15';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\mitdb';
addpath(Path);
filename = '116.dat';
fid=fopen([Path,'\',filename],'r'); 
mitdb_Sig16 = fread(fid);
mitdb_Sig16 = mitdb_Sig16';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\mitdb';
addpath(Path);
filename = '117.dat';
fid=fopen([Path,'\',filename],'r'); 
mitdb_Sig17 = fread(fid);
mitdb_Sig17 = mitdb_Sig17';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\mitdb';
addpath(Path);
filename = '118.dat';
fid=fopen([Path,'\',filename],'r'); 
mitdb_Sig18 = fread(fid);
mitdb_Sig18 = mitdb_Sig18';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\mitdb';
addpath(Path);
filename = '119.dat';
fid=fopen([Path,'\',filename],'r'); 
mitdb_Sig19 = fread(fid);
mitdb_Sig19 = mitdb_Sig19';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\mitdb';
addpath(Path);
filename = '121.dat';
fid=fopen([Path,'\',filename],'r'); 
mitdb_Sig20 = fread(fid);
mitdb_Sig20 = mitdb_Sig20';

close all; clc; fclose('all');
% ---------------------------------------------------------------------
addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\nsrdb';
addpath(Path);
filename = '19830.dat';
fid=fopen([Path,'\',filename],'r'); 
nsrdb_Sig01 = fread(fid);
nsrdb_Sig01 = nsrdb_Sig01';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\nsrdb';
addpath(Path);
filename = '19140.dat';
fid=fopen([Path,'\',filename],'r'); 
nsrdb_Sig02 = fread(fid);
nsrdb_Sig02 = nsrdb_Sig02';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\nsrdb';
addpath(Path);
filename = '19093.dat';
fid=fopen([Path,'\',filename],'r'); 
nsrdb_Sig03 = fread(fid);
nsrdb_Sig03 = nsrdb_Sig03';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\nsrdb';
addpath(Path);
filename = '19090.dat';
fid=fopen([Path,'\',filename],'r'); 
nsrdb_Sig04 = fread(fid);
nsrdb_Sig04 = nsrdb_Sig04';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\nsrdb';
addpath(Path);
filename = '19088.dat';
fid=fopen([Path,'\',filename],'r'); 
nsrdb_Sig05 = fread(fid);
nsrdb_Sig05 = nsrdb_Sig05';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\nsrdb';
addpath(Path);
filename = '18184.dat';
fid=fopen([Path,'\',filename],'r'); 
nsrdb_Sig06 = fread(fid);
nsrdb_Sig06 = nsrdb_Sig06';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\nsrdb';
addpath(Path);
filename = '18177.dat';
fid=fopen([Path,'\',filename],'r'); 
nsrdb_Sig07 = fread(fid);
nsrdb_Sig07 = nsrdb_Sig07';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\nsrdb';
addpath(Path);
filename = '17453.dat';
fid=fopen([Path,'\',filename],'r'); 
nsrdb_Sig08 = fread(fid);
nsrdb_Sig08 = nsrdb_Sig08';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\nsrdb';
addpath(Path);
filename = '17052.dat';
fid=fopen([Path,'\',filename],'r'); 
nsrdb_Sig09 = fread(fid);
nsrdb_Sig09 = nsrdb_Sig09';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\nsrdb';
addpath(Path);
filename = '16795.dat';
fid=fopen([Path,'\',filename],'r'); 
nsrdb_Sig10 = fread(fid);
nsrdb_Sig10 = nsrdb_Sig10';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\nsrdb';
addpath(Path);
filename = '16786.dat';
fid=fopen([Path,'\',filename],'r'); 
nsrdb_Sig11 = fread(fid);
nsrdb_Sig11 = nsrdb_Sig11';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\nsrdb';
addpath(Path);
filename = '16773.dat';
fid=fopen([Path,'\',filename],'r'); 
nsrdb_Sig12 = fread(fid);
nsrdb_Sig12 = nsrdb_Sig12';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\nsrdb';
addpath(Path);
filename = '16539.dat';
fid=fopen([Path,'\',filename],'r'); 
nsrdb_Sig13 = fread(fid);
nsrdb_Sig13 = nsrdb_Sig13';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\nsrdb';
addpath(Path);
filename = '16483.dat';
fid=fopen([Path,'\',filename],'r'); 
nsrdb_Sig14 = fread(fid);
nsrdb_Sig14 = nsrdb_Sig14';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\nsrdb';
addpath(Path);
filename = '16420.dat';
fid=fopen([Path,'\',filename],'r'); 
nsrdb_Sig15 = fread(fid);
nsrdb_Sig15 = nsrdb_Sig15';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\nsrdb';
addpath(Path);
filename = '16273.dat';
fid=fopen([Path,'\',filename],'r'); 
nsrdb_Sig16 = fread(fid);
nsrdb_Sig16 = nsrdb_Sig16';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\nsrdb';
addpath(Path);
filename = '16272.dat';
fid=fopen([Path,'\',filename],'r'); 
nsrdb_Sig17 = fread(fid);
nsrdb_Sig17 = nsrdb_Sig17';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\nsrdb';
addpath(Path);
filename = '16265.dat';
fid=fopen([Path,'\',filename],'r'); 
nsrdb_Sig18 = fread(fid);
nsrdb_Sig18 = nsrdb_Sig18';

close all; clc; fclose('all');
% ---------------------------------------------------------------------
addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\pwave';
addpath(Path);
filename = '231.dat';
fid=fopen([Path,'\',filename],'r'); 
pwave_Sig01 = fread(fid);
pwave_Sig01 = pwave_Sig01';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\pwave';
addpath(Path);
filename = '223.dat';
fid=fopen([Path,'\',filename],'r'); 
pwave_Sig02 = fread(fid);
pwave_Sig02 = pwave_Sig02';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\pwave';
addpath(Path);
filename = '222.dat';
fid=fopen([Path,'\',filename],'r'); 
pwave_Sig03 = fread(fid);
pwave_Sig03 = pwave_Sig03';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\pwave';
addpath(Path);
filename = '122.dat';
fid=fopen([Path,'\',filename],'r'); 
pwave_Sig04 = fread(fid);
pwave_Sig04 = pwave_Sig04';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\pwave';
addpath(Path);
filename = '117.dat';
fid=fopen([Path,'\',filename],'r'); 
pwave_Sig05 = fread(fid);
pwave_Sig05 = pwave_Sig05';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\pwave';
addpath(Path);
filename = '214.dat';
fid=fopen([Path,'\',filename],'r'); 
pwave_Sig06 = fread(fid);
pwave_Sig06 = pwave_Sig06';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\pwave';
addpath(Path);
filename = '207.dat';
fid=fopen([Path,'\',filename],'r'); 
pwave_Sig07 = fread(fid);
pwave_Sig07 = pwave_Sig07';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\pwave';
addpath(Path);
filename = '119.dat';
fid=fopen([Path,'\',filename],'r'); 
pwave_Sig08 = fread(fid);
pwave_Sig08 = pwave_Sig08';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\pwave';
addpath(Path);
filename = '106.dat';
fid=fopen([Path,'\',filename],'r'); 
pwave_Sig09 = fread(fid);
pwave_Sig09 = pwave_Sig09';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\pwave';
addpath(Path);
filename = '103.dat';
fid=fopen([Path,'\',filename],'r'); 
pwave_Sig10 = fread(fid);
pwave_Sig10 = pwave_Sig10';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\pwave';
addpath(Path);
filename = '101.dat';
fid=fopen([Path,'\',filename],'r'); 
pwave_Sig11 = fread(fid);
pwave_Sig11 = pwave_Sig11';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\pwave';
addpath(Path);
filename = '100.dat';
fid=fopen([Path,'\',filename],'r'); 
pwave_Sig12 = fread(fid);
pwave_Sig12 = pwave_Sig12';

close all; clc; fclose('all');
% ---------------------------------------------------------------------
addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\qtdb';
addpath(Path);
filename = 'sele0704.dat';
fid=fopen(filename,'r');
qtdb_Sig01 = fread(fid);
qtdb_Sig01 = qtdb_Sig01';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\qtdb';
addpath(Path);
filename = 'sele0612.dat';
fid=fopen(filename,'r');
qtdb_Sig02 = fread(fid);
qtdb_Sig02 = qtdb_Sig02';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\qtdb';
addpath(Path);
filename = 'sele0609.dat';
fid=fopen(filename,'r');
qtdb_Sig03 = fread(fid);
qtdb_Sig03 = qtdb_Sig03';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\qtdb';
addpath(Path);
filename = 'sele0607.dat';
fid=fopen(filename,'r');
qtdb_Sig04 = fread(fid);
qtdb_Sig04 = qtdb_Sig04';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\qtdb';
addpath(Path);
filename = 'sele0606.dat';
fid=fopen(filename,'r');
qtdb_Sig05 = fread(fid);
qtdb_Sig05 = qtdb_Sig05';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\qtdb';
addpath(Path);
filename = 'sele0604.dat';
fid=fopen(filename,'r');
qtdb_Sig06 = fread(fid);
qtdb_Sig06 = qtdb_Sig06';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\qtdb';
addpath(Path);
filename = 'sele0603.dat';
fid=fopen(filename,'r');
qtdb_Sig07 = fread(fid);
qtdb_Sig07 = qtdb_Sig07';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\qtdb';
addpath(Path);
filename = 'sele0509.dat';
fid=fopen(filename,'r');
qtdb_Sig08 = fread(fid);
qtdb_Sig08 = qtdb_Sig08';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\qtdb';
addpath(Path);
filename = 'sele0411.dat';
fid=fopen(filename,'r');
qtdb_Sig09 = fread(fid);
qtdb_Sig09 = qtdb_Sig09';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\qtdb';
addpath(Path);
filename = 'sele0409.dat';
fid=fopen(filename,'r');
qtdb_Sig10 = fread(fid);
qtdb_Sig10 = qtdb_Sig10';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\qtdb';
addpath(Path);
filename = 'sele0406.dat';
fid=fopen(filename,'r');
qtdb_Sig11 = fread(fid);
qtdb_Sig11 = qtdb_Sig11';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\qtdb';
addpath(Path);
filename = 'sele0405.dat';
fid=fopen(filename,'r');
qtdb_Sig12 = fread(fid);
qtdb_Sig12 = qtdb_Sig12';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\qtdb';
addpath(Path);
filename = 'sele0303.dat';
fid=fopen(filename,'r');
qtdb_Sig13 = fread(fid);
qtdb_Sig13 = qtdb_Sig13';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\qtdb';
addpath(Path);
filename = 'sele0211.dat';
fid=fopen(filename,'r');
qtdb_Sig14 = fread(fid);
qtdb_Sig14 = qtdb_Sig14';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\qtdb';
addpath(Path);
filename = 'sele0203.dat';
fid=fopen(filename,'r');
qtdb_Sig15 = fread(fid);
qtdb_Sig15 = qtdb_Sig15';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\qtdb';
addpath(Path);
filename = 'sele0210.dat';
fid=fopen(filename,'r');
qtdb_Sig16 = fread(fid);
qtdb_Sig16 = qtdb_Sig16';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\qtdb';
addpath(Path);
filename = 'sele0170.dat';
fid=fopen(filename,'r');
qtdb_Sig17 = fread(fid);
qtdb_Sig17 = qtdb_Sig17';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\qtdb';
addpath(Path);
filename = 'sele0166.dat';
fid=fopen(filename,'r');
qtdb_Sig18 = fread(fid);
qtdb_Sig18 = qtdb_Sig18';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\qtdb';
addpath(Path);
filename = 'sele0136.dat';
fid=fopen(filename,'r');
qtdb_Sig19 = fread(fid);
qtdb_Sig19 = qtdb_Sig19';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\qtdb';
addpath(Path);
filename = 'sele0133.dat';
fid=fopen(filename,'r');
qtdb_Sig20 = fread(fid);
qtdb_Sig20 = qtdb_Sig20';

close all; clc; fclose('all');
% ---------------------------------------------------------------------
addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\slpdb';
addpath(Path);
filename = 'slp01a.dat';
fid=fopen(filename,'r');
slpdb_Sig01 = fread(fid);
slpdb_Sig01 = slpdb_Sig01';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\slpdb';
addpath(Path);
filename = 'slp01b.dat';
fid=fopen(filename,'r');
slpdb_Sig02 = fread(fid);
slpdb_Sig02 = slpdb_Sig02';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\slpdb';
addpath(Path);
filename = 'slp02a.dat';
fid=fopen(filename,'r');
slpdb_Sig03 = fread(fid);
slpdb_Sig03 = slpdb_Sig03';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\slpdb';
addpath(Path);
filename = 'slp02b.dat';
fid=fopen(filename,'r');
slpdb_Sig04 = fread(fid);
slpdb_Sig04 = slpdb_Sig04';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\slpdb';
addpath(Path);
filename = 'slp03.dat';
fid=fopen(filename,'r');
slpdb_Sig05 = fread(fid);
slpdb_Sig05 = slpdb_Sig05';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\slpdb';
addpath(Path);
filename = 'slp04.dat';
fid=fopen(filename,'r');
slpdb_Sig06 = fread(fid);
slpdb_Sig06 = slpdb_Sig06';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\slpdb';
addpath(Path);
filename = 'slp14.dat';
fid=fopen(filename,'r');
slpdb_Sig07 = fread(fid);
slpdb_Sig07 = slpdb_Sig07';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\slpdb';
addpath(Path);
filename = 'slp16.dat';
fid=fopen(filename,'r');
slpdb_Sig08 = fread(fid);
slpdb_Sig08 = slpdb_Sig08';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\slpdb';
addpath(Path);
filename = 'slp32.dat';
fid=fopen(filename,'r');
slpdb_Sig09 = fread(fid);
slpdb_Sig09 = slpdb_Sig09';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\slpdb';
addpath(Path);
filename = 'slp37.dat';
fid=fopen(filename,'r');
slpdb_Sig10 = fread(fid);
slpdb_Sig10 = slpdb_Sig10';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\slpdb';
addpath(Path);
filename = 'slp41.dat';
fid=fopen(filename,'r');
slpdb_Sig11 = fread(fid);
slpdb_Sig11 = slpdb_Sig11';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\slpdb';
addpath(Path);
filename = 'slp45.dat';
fid=fopen(filename,'r');
slpdb_Sig12 = fread(fid);
slpdb_Sig12 = slpdb_Sig12';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\slpdb';
addpath(Path);
filename = 'slp48.dat';
fid=fopen(filename,'r');
slpdb_Sig13 = fread(fid);
slpdb_Sig13 = slpdb_Sig13';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\slpdb';
addpath(Path);
filename = 'slp59.dat';
fid=fopen(filename,'r');
slpdb_Sig14 = fread(fid);
slpdb_Sig14 = slpdb_Sig14';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\slpdb';
addpath(Path);
filename = 'slp60.dat';
fid=fopen(filename,'r');
slpdb_Sig15 = fread(fid);
slpdb_Sig15 = slpdb_Sig15';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\slpdb';
addpath(Path);
filename = 'slp61.dat';
fid=fopen(filename,'r');
slpdb_Sig16 = fread(fid);
slpdb_Sig16 = slpdb_Sig16';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\slpdb';
addpath(Path);
filename = 'slp66.dat';
fid=fopen(filename,'r');
slpdb_Sig17 = fread(fid);
slpdb_Sig17 = slpdb_Sig17';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\slpdb';
addpath(Path);
filename = 'slp67x.dat';
fid=fopen(filename,'r');
slpdb_Sig18 = fread(fid);
slpdb_Sig18 = slpdb_Sig18';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\stdb';
addpath(Path);
filename = '326.dat';
fid=fopen(filename,'r');
stdb_Sig01 = fread(fid);
stdb_Sig01 = stdb_Sig01';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\stdb';
addpath(Path);
filename = '327.dat';
fid=fopen(filename,'r');
stdb_Sig02 = fread(fid);
stdb_Sig02 = stdb_Sig02';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\stdb';
addpath(Path);
filename = '300.dat';
fid=fopen(filename,'r');
stdb_Sig03 = fread(fid);
stdb_Sig03 = stdb_Sig03';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\stdb';
addpath(Path);
filename = '301.dat';
fid=fopen(filename,'r');
stdb_Sig04 = fread(fid);
stdb_Sig04 = stdb_Sig04';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\stdb';
addpath(Path);
filename = '302.dat';
fid=fopen(filename,'r');
stdb_Sig05 = fread(fid);
stdb_Sig05 = stdb_Sig05';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\stdb';
addpath(Path);
filename = '303.dat';
fid=fopen(filename,'r');
stdb_Sig06 = fread(fid);
stdb_Sig06 = stdb_Sig06';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\stdb';
addpath(Path);
filename = '304.dat';
fid=fopen(filename,'r');
stdb_Sig07 = fread(fid);
stdb_Sig07 = stdb_Sig07';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\stdb';
addpath(Path);
filename = '305.dat';
fid=fopen(filename,'r');
stdb_Sig08 = fread(fid);
stdb_Sig08 = stdb_Sig08';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\stdb';
addpath(Path);
filename = '306.dat';
fid=fopen(filename,'r');
stdb_Sig09 = fread(fid);
stdb_Sig09 = stdb_Sig09';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\stdb';
addpath(Path);
filename = '307.dat';
fid=fopen(filename,'r');
stdb_Sig10 = fread(fid);
stdb_Sig10 = stdb_Sig10';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\stdb';
addpath(Path);
filename = '308.dat';
fid=fopen(filename,'r');
stdb_Sig11 = fread(fid);
stdb_Sig11 = stdb_Sig11';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\stdb';
addpath(Path);
filename = '309.dat';
fid=fopen(filename,'r');
stdb_Sig12 = fread(fid);
stdb_Sig12 = stdb_Sig12';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\stdb';
addpath(Path);
filename = '310.dat';
fid=fopen(filename,'r');
stdb_Sig13 = fread(fid);
stdb_Sig13 = stdb_Sig13';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\stdb';
addpath(Path);
filename = '311.dat';
fid=fopen(filename,'r');
stdb_Sig14 = fread(fid);
stdb_Sig14 = stdb_Sig14';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\stdb';
addpath(Path);
filename = '312.dat';
fid=fopen(filename,'r');
stdb_Sig15 = fread(fid);
stdb_Sig15 = stdb_Sig15';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\stdb';
addpath(Path);
filename = '313.dat';
fid=fopen(filename,'r');
stdb_Sig16 = fread(fid);
stdb_Sig16 = stdb_Sig16';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\stdb';
addpath(Path);
filename = '314.dat';
fid=fopen(filename,'r');
stdb_Sig17 = fread(fid);
stdb_Sig17 = stdb_Sig17';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\stdb';
addpath(Path);
filename = '315.dat';
fid=fopen(filename,'r');
stdb_Sig18 = fread(fid);
stdb_Sig18 = stdb_Sig18';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\stdb';
addpath(Path);
filename = '316.dat';
fid=fopen(filename,'r');
stdb_Sig19 = fread(fid);
stdb_Sig19 = stdb_Sig19';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\stdb';
addpath(Path);
filename = '317.dat';
fid=fopen(filename,'r');
stdb_Sig20 = fread(fid);
stdb_Sig20 = stdb_Sig20';

close all; clc; fclose('all');
% ---------------------------------------------------------------------
addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\svdb';
addpath(Path);
filename = '894.dat';
fid=fopen(filename,'r');
svdb_Sig01 = fread(fid);
svdb_Sig01 = svdb_Sig01';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\svdb';
addpath(Path);
filename = '893.dat';
fid=fopen(filename,'r');
svdb_Sig02 = fread(fid);
svdb_Sig02 = svdb_Sig02';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\svdb';
addpath(Path);
filename = '892.dat';
fid=fopen(filename,'r');
svdb_Sig03 = fread(fid);
svdb_Sig03 = svdb_Sig03';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\svdb';
addpath(Path);
filename = '891.dat';
fid=fopen(filename,'r');
svdb_Sig04 = fread(fid);
svdb_Sig04 = svdb_Sig04';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\svdb';
addpath(Path);
filename = '890.dat';
fid=fopen(filename,'r');
svdb_Sig05 = fread(fid);
svdb_Sig05 = svdb_Sig05';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\svdb';
addpath(Path);
filename = '889.dat';
fid=fopen(filename,'r');
svdb_Sig06 = fread(fid);
svdb_Sig06 = svdb_Sig06';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\svdb';
addpath(Path);
filename = '888.dat';
fid=fopen(filename,'r');
svdb_Sig07 = fread(fid);
svdb_Sig07 = svdb_Sig07';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\svdb';
addpath(Path);
filename = '887.dat';
fid=fopen(filename,'r');
svdb_Sig08 = fread(fid);
svdb_Sig08 = svdb_Sig08';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\svdb';
addpath(Path);
filename = '886.dat';
fid=fopen(filename,'r');
svdb_Sig09 = fread(fid);
svdb_Sig09 = svdb_Sig09';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\svdb';
addpath(Path);
filename = '885.dat';
fid=fopen(filename,'r');
svdb_Sig10 = fread(fid);
svdb_Sig10 = svdb_Sig10';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\svdb';
addpath(Path);
filename = '884.dat';
fid=fopen(filename,'r');
svdb_Sig11 = fread(fid);
svdb_Sig11 = svdb_Sig11';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\svdb';
addpath(Path);
filename = '883.dat';
fid=fopen(filename,'r');
svdb_Sig12 = fread(fid);
svdb_Sig12 = svdb_Sig12';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\svdb';
addpath(Path);
filename = '882.dat';
fid=fopen(filename,'r');
svdb_Sig13 = fread(fid);
svdb_Sig13 = svdb_Sig13';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\svdb';
addpath(Path);
filename = '881.dat';
fid=fopen(filename,'r');
svdb_Sig14 = fread(fid);
svdb_Sig14 = svdb_Sig14';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\svdb';
addpath(Path);
filename = '880.dat';
fid=fopen(filename,'r');
svdb_Sig15 = fread(fid);
svdb_Sig15 = svdb_Sig15';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\svdb';
addpath(Path);
filename = '879.dat';
fid=fopen(filename,'r');
svdb_Sig16 = fread(fid);
svdb_Sig16 = svdb_Sig16';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\svdb';
addpath(Path);
filename = '878.dat';
fid=fopen(filename,'r');
svdb_Sig17 = fread(fid);
svdb_Sig17 = svdb_Sig17';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\svdb';
addpath(Path);
filename = '877.dat';
fid=fopen(filename,'r');
svdb_Sig18 = fread(fid);
svdb_Sig18 = svdb_Sig18';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\svdb';
addpath(Path);
filename = '876.dat';
fid=fopen(filename,'r');
svdb_Sig19 = fread(fid);
svdb_Sig19 = svdb_Sig19';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\svdb';
addpath(Path);
filename = '875.dat';
fid=fopen(filename,'r');
svdb_Sig20 = fread(fid);
svdb_Sig20 = svdb_Sig20';

close all; clc; fclose('all');
% ---------------------------------------------------------------------
addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\vfdb';
addpath(Path);
filename = '418.dat';
fid=fopen(filename,'r');
vfdb_Sig01 = fread(fid);
vfdb_Sig01 = vfdb_Sig01';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\vfdb';
addpath(Path);
filename = '419.dat';
fid=fopen(filename,'r');
vfdb_Sig02 = fread(fid);
vfdb_Sig02 = vfdb_Sig02';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\vfdb';
addpath(Path);
filename = '420.dat';
fid=fopen(filename,'r');
vfdb_Sig03 = fread(fid);
vfdb_Sig03 = vfdb_Sig03';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\vfdb';
addpath(Path);
filename = '421.dat';
fid=fopen(filename,'r');
vfdb_Sig04 = fread(fid);
vfdb_Sig04 = vfdb_Sig04';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\vfdb';
addpath(Path);
filename = '422.dat';
fid=fopen(filename,'r');
vfdb_Sig05 = fread(fid);
vfdb_Sig05 = vfdb_Sig05';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\vfdb';
addpath(Path);
filename = '423.dat';
fid=fopen(filename,'r');
vfdb_Sig06 = fread(fid);
vfdb_Sig06 = vfdb_Sig06';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\vfdb';
addpath(Path);
filename = '424.dat';
fid=fopen(filename,'r');
vfdb_Sig07 = fread(fid);
vfdb_Sig07 = vfdb_Sig07';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\vfdb';
addpath(Path);
filename = '425.dat';
fid=fopen(filename,'r');
vfdb_Sig08 = fread(fid);
vfdb_Sig08 = vfdb_Sig08';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\vfdb';
addpath(Path);
filename = '426.dat';
fid=fopen(filename,'r');
vfdb_Sig09 = fread(fid);
vfdb_Sig09 = vfdb_Sig09';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\vfdb';
addpath(Path);
filename = '427.dat';
fid=fopen(filename,'r');
vfdb_Sig10 = fread(fid);
vfdb_Sig10 = vfdb_Sig10';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\vfdb';
addpath(Path);
filename = '428.dat';
fid=fopen(filename,'r');
vfdb_Sig11 = fread(fid);
vfdb_Sig11 = vfdb_Sig11';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\vfdb';
addpath(Path);
filename = '429.dat';
fid=fopen(filename,'r');
vfdb_Sig12 = fread(fid);
vfdb_Sig12 = vfdb_Sig12';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\vfdb';
addpath(Path);
filename = '430.dat';
fid=fopen(filename,'r');
vfdb_Sig13 = fread(fid);
vfdb_Sig13 = vfdb_Sig13';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\vfdb';
addpath(Path);
filename = '602.dat';
fid=fopen(filename,'r');
vfdb_Sig14 = fread(fid);
vfdb_Sig14 = vfdb_Sig14';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\vfdb';
addpath(Path);
filename = '605.dat';
fid=fopen(filename,'r');
vfdb_Sig15 = fread(fid);
vfdb_Sig15 = vfdb_Sig15';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\vfdb';
addpath(Path);
filename = '607.dat';
fid=fopen(filename,'r');
vfdb_Sig16 = fread(fid);
vfdb_Sig16 = vfdb_Sig16';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\vfdb';
addpath(Path);
filename = '609.dat';
fid=fopen(filename,'r');
vfdb_Sig17 = fread(fid);
vfdb_Sig17 = vfdb_Sig17';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\vfdb';
addpath(Path);
filename = '610.dat';
fid=fopen(filename,'r');
vfdb_Sig18 = fread(fid);
vfdb_Sig18 = vfdb_Sig18';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\vfdb';
addpath(Path);
filename = '611.dat';
fid=fopen(filename,'r');
vfdb_Sig19 = fread(fid);
vfdb_Sig19 = vfdb_Sig19';

addpath('C:\Users\shaya\Desktop\CodeToReadDatasets\Open ECG file data');
Path = 'C:\Users\shaya\Desktop\Datasets\vfdb';
addpath(Path);
filename = '612.dat';
fid=fopen(filename,'r');
vfdb_Sig20 = fread(fid);
vfdb_Sig20 = vfdb_Sig20';

close all; clc; fclose('all');

