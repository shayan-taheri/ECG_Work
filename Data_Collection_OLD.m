%% Preparing Environment
clear all; close all; clc; fclose('all');
Image_Path = 'C:\Users\shaya\Desktop\Images';
%% ---------- Normal: MIT-BIH Normal Sinus Rhythm Database (nsrdb) ----------
[signal,Fs,tm]=rdsamp('nsrdb/16265');
% plot(signal(:,1));
nsrdb_Sig01 = signal(:,1);
nsrdb_Sig01 = nsrdb_Sig01(1000:1500);

% plot(signal(:,2));
nsrdb_Sig02 = signal(:,2);
nsrdb_Sig02 = nsrdb_Sig02(1000:1500);

[signal,Fs,tm]=rdsamp('nsrdb/16272');
% plot(signal(:,1));
nsrdb_Sig03 = signal(:,1);
nsrdb_Sig03 = nsrdb_Sig03(1000:1500);

% plot(signal(:,2));
nsrdb_Sig04 = signal(:,2);
nsrdb_Sig04 = nsrdb_Sig04(1000:1500);

[signal,Fs,tm]=rdsamp('nsrdb/16273');
% plot(signal(:,1));
nsrdb_Sig05 = signal(:,1);
nsrdb_Sig05 = nsrdb_Sig05(1000:1500);

% plot(signal(:,2));
nsrdb_Sig06 = signal(:,2);
nsrdb_Sig06 = nsrdb_Sig06(1000:1500);

[signal,Fs,tm]=rdsamp('nsrdb/16420');
% plot(signal(:,1));
nsrdb_Sig07 = signal(:,1);
nsrdb_Sig07 = nsrdb_Sig07(1000:1500);

% plot(signal(:,2));
nsrdb_Sig08 = signal(:,2);
nsrdb_Sig08 = nsrdb_Sig08(1000:1500);

[signal,Fs,tm]=rdsamp('nsrdb/16483');
% plot(signal(:,1));
nsrdb_Sig09 = signal(:,1);
nsrdb_Sig09 = nsrdb_Sig09(1000:1500);

% plot(signal(:,2));
nsrdb_Sig10 = signal(:,2);
nsrdb_Sig10 = nsrdb_Sig10(1000:1500);

[signal,Fs,tm]=rdsamp('nsrdb/16539');
% plot(signal(:,1));
nsrdb_Sig11 = signal(:,1);
nsrdb_Sig11 = nsrdb_Sig11(1000:1500);

% plot(signal(:,2));
nsrdb_Sig12 = signal(:,2);
nsrdb_Sig12 = nsrdb_Sig12(1000:1500);

[signal,Fs,tm]=rdsamp('nsrdb/16773');
% plot(signal(:,1));
nsrdb_Sig13 = signal(:,1);
nsrdb_Sig13 = nsrdb_Sig13(1000:1500);

% plot(signal(:,2));
nsrdb_Sig14 = signal(:,2);
nsrdb_Sig14 = nsrdb_Sig14(1000:1500);

[signal,Fs,tm]=rdsamp('nsrdb/16786');
% plot(signal(:,1));
nsrdb_Sig15 = signal(:,1);
nsrdb_Sig15 = nsrdb_Sig15(1000:1500);

% plot(signal(:,2));
nsrdb_Sig16 = signal(:,2);
nsrdb_Sig16 = nsrdb_Sig16(1000:1500);

[signal,Fs,tm]=rdsamp('nsrdb/16795');
% plot(signal(:,1));
nsrdb_Sig17 = signal(:,1);
nsrdb_Sig17 = nsrdb_Sig17(1000:1500);

% plot(signal(:,2));
nsrdb_Sig18 = signal(:,2);
nsrdb_Sig18 = nsrdb_Sig18(1000:1500);

[signal,Fs,tm]=rdsamp('nsrdb/17052');
% plot(signal(:,1));
nsrdb_Sig19 = signal(:,1);
nsrdb_Sig19 = nsrdb_Sig19(1000:1500);

% plot(signal(:,2));
nsrdb_Sig20 = signal(:,2);
nsrdb_Sig20 = nsrdb_Sig20(1000:1500);

[signal,Fs,tm]=rdsamp('nsrdb/17453');
% plot(signal(:,1));
nsrdb_Sig21 = signal(:,1);
nsrdb_Sig21 = nsrdb_Sig21(1000:1500);

% plot(signal(:,2));
nsrdb_Sig22 = signal(:,2);
nsrdb_Sig22 = nsrdb_Sig22(1000:1500);

[signal,Fs,tm]=rdsamp('nsrdb/18177');
% plot(signal(:,1));
nsrdb_Sig23 = signal(:,1);
nsrdb_Sig23 = nsrdb_Sig23(1000:1500);

% plot(signal(:,2));
nsrdb_Sig24 = signal(:,2);
nsrdb_Sig24 = nsrdb_Sig24(1000:1500);

[signal,Fs,tm]=rdsamp('nsrdb/18184');
% plot(signal(:,1));
nsrdb_Sig25 = signal(:,1);
nsrdb_Sig25 = nsrdb_Sig25(1000:1500);

% plot(signal(:,2));
nsrdb_Sig26 = signal(:,2);
nsrdb_Sig26 = nsrdb_Sig26(1000:1500);

[signal,Fs,tm]=rdsamp('nsrdb/19088');
% plot(signal(:,1));
nsrdb_Sig27 = signal(:,1);
nsrdb_Sig27 = nsrdb_Sig27(1000:1500);

% plot(signal(:,2));
nsrdb_Sig28 = signal(:,2);
nsrdb_Sig28 = nsrdb_Sig28(1000:1500);

[signal,Fs,tm]=rdsamp('nsrdb/19090');
% plot(signal(:,1));
nsrdb_Sig29 = signal(:,1);
nsrdb_Sig29 = nsrdb_Sig29(1000:1500);

% plot(signal(:,2));
nsrdb_Sig30 = signal(:,2);
nsrdb_Sig30 = nsrdb_Sig30(1000:1500);

[signal,Fs,tm]=rdsamp('nsrdb/19093');
% plot(signal(:,1));
nsrdb_Sig31 = signal(:,1);
nsrdb_Sig31 = nsrdb_Sig31(1000:1500);

% plot(signal(:,2));
nsrdb_Sig32 = signal(:,2);
nsrdb_Sig32 = nsrdb_Sig32(1000:1500);

[signal,Fs,tm]=rdsamp('nsrdb/19140');
% plot(signal(:,1));
nsrdb_Sig33 = signal(:,1);
nsrdb_Sig33 = nsrdb_Sig33(1000:1500);

% plot(signal(:,2));
nsrdb_Sig34 = signal(:,2);
nsrdb_Sig34 = nsrdb_Sig34(1000:1500);

[signal,Fs,tm]=rdsamp('nsrdb/19830');
% plot(signal(:,1));
nsrdb_Sig35 = signal(:,1);
nsrdb_Sig35 = nsrdb_Sig35(1000:1500);

% plot(signal(:,2));
nsrdb_Sig36 = signal(:,2);
nsrdb_Sig36 = nsrdb_Sig36(1000:1500);

for ix = 1:36
    if ix <= 9
        fig_id = figure(); plot(eval(['nsrdb_Sig0',num2str(ix)]));
        xlim([0,500]);
        saveas(fig_id,['C:\Users\shaya\Desktop\Images\Temp\','Sig0',num2str(ix),'.png']);
        Img1 = imread(['C:\Users\shaya\Desktop\Images\Temp\','Sig0',num2str(ix),'.png']);
        Img2 = imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]
        imwrite(Img2,[Image_Path,'\nsrdb\','Sig0',num2str(ix),'.png']);
        fig_id = figure(); spectrogram(eval(['nsrdb_Sig0',num2str(ix)]));
        saveas(fig_id,[Image_Path,'\nsrdb\','Spec0',num2str(ix),'.png']);
    else
        fig_id = figure(); plot(eval(['nsrdb_Sig',num2str(ix)]));
        xlim([0,500]);
        saveas(fig_id,['C:\Users\shaya\Desktop\Images\Temp\','Sig',num2str(ix),'.png']);
        Img1 = imread(['C:\Users\shaya\Desktop\Images\Temp\','Sig',num2str(ix),'.png']);
        Img2 = imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]
        imwrite(Img2,[Image_Path,'\nsrdb\','Sig0',num2str(ix),'.png']);
        fig_id = figure(); spectrogram(eval(['nsrdb_Sig',num2str(ix)]));
        saveas(fig_id,[Image_Path,'\nsrdb\','Spec',num2str(ix),'.png']);
    end
end

close all; clc; fclose('all');

%% ---------- ST: MIT-BIH ST Change Database (stdb) ----------

[signal,Fs,tm]=rdsamp('stdb/300');
% plot(signal(:,1));
stdb_Sig01 = signal(:,1);
stdb_Sig01 = stdb_Sig01(1000:1500);

% plot(signal(:,2));
stdb_Sig02 = signal(:,2);
stdb_Sig02 = stdb_Sig02(1000:1500);

[signal,Fs,tm]=rdsamp('stdb/301');
% plot(signal(:,1));
stdb_Sig03 = signal(:,1);
stdb_Sig03 = stdb_Sig03(1000:1500);

% plot(signal(:,2));
stdb_Sig04 = signal(:,2);
stdb_Sig04 = stdb_Sig04(1000:1500);

[signal,Fs,tm]=rdsamp('stdb/302');
% plot(signal(:,1));
stdb_Sig05 = signal(:,1);
stdb_Sig05 = stdb_Sig05(1000:1500);

% plot(signal(:,2));
stdb_Sig06 = signal(:,2);
stdb_Sig06 = stdb_Sig06(1000:1500);

[signal,Fs,tm]=rdsamp('stdb/303');
% plot(signal(:,1));
stdb_Sig07 = signal(:,1);
stdb_Sig07 = stdb_Sig07(1000:1500);

% plot(signal(:,2));
stdb_Sig08 = signal(:,2);
stdb_Sig08 = stdb_Sig08(1000:1500);

[signal,Fs,tm]=rdsamp('stdb/304');
% plot(signal(:,1));
stdb_Sig09 = signal(:,1);
stdb_Sig09 = stdb_Sig09(1000:1500);

% plot(signal(:,2));
stdb_Sig10 = signal(:,2);
stdb_Sig10 = stdb_Sig10(1000:1500);

[signal,Fs,tm]=rdsamp('stdb/305');
% plot(signal(:,1));
stdb_Sig11 = signal(:,1);
stdb_Sig11 = stdb_Sig11(1000:1500);

% plot(signal(:,2));
stdb_Sig12 = signal(:,2);
stdb_Sig12 = stdb_Sig12(1000:1500);

[signal,Fs,tm]=rdsamp('stdb/306');
% plot(signal(:,1));
stdb_Sig13 = signal(:,1);
stdb_Sig13 = stdb_Sig13(1000:1500);

% plot(signal(:,2));
stdb_Sig14 = signal(:,2);
stdb_Sig14 = stdb_Sig14(1000:1500);

[signal,Fs,tm]=rdsamp('stdb/307');
% plot(signal(:,1));
stdb_Sig15 = signal(:,1);
stdb_Sig15 = stdb_Sig15(1000:1500);

% plot(signal(:,2));
stdb_Sig16 = signal(:,2);
stdb_Sig16 = stdb_Sig16(1000:1500);

[signal,Fs,tm]=rdsamp('stdb/308');
% plot(signal(:,1));
stdb_Sig17 = signal(:,1);
stdb_Sig17 = stdb_Sig17(1000:1500);

% plot(signal(:,2));
stdb_Sig18 = signal(:,2);
stdb_Sig18 = stdb_Sig18(1000:1500);

[signal,Fs,tm]=rdsamp('stdb/309');
% plot(signal(:,1));
stdb_Sig19 = signal(:,1);
stdb_Sig19 = stdb_Sig19(1000:1500);

% plot(signal(:,2));
stdb_Sig20 = signal(:,2);
stdb_Sig20 = stdb_Sig20(1000:1500);

[signal,Fs,tm]=rdsamp('stdb/310');
% plot(signal(:,1));
stdb_Sig21 = signal(:,1);
stdb_Sig21 = stdb_Sig21(1000:1500);

% plot(signal(:,2));
stdb_Sig22 = signal(:,2);
stdb_Sig22 = stdb_Sig22(1000:1500);

[signal,Fs,tm]=rdsamp('stdb/311');
% plot(signal(:,1));
stdb_Sig23 = signal(:,1);
stdb_Sig23 = stdb_Sig23(1000:1500);

% plot(signal(:,2));
stdb_Sig24 = signal(:,2);
stdb_Sig24 = stdb_Sig24(1000:1500);

[signal,Fs,tm]=rdsamp('stdb/312');
% plot(signal(:,1));
stdb_Sig25 = signal(:,1);
stdb_Sig25 = stdb_Sig25(1000:1500);

% plot(signal(:,2));
stdb_Sig26 = signal(:,2);
stdb_Sig26 = stdb_Sig26(1000:1500);

[signal,Fs,tm]=rdsamp('stdb/313');
% plot(signal(:,1));
stdb_Sig27 = signal(:,1);
stdb_Sig27 = stdb_Sig27(1000:1500);

[signal,Fs,tm]=rdsamp('stdb/314');
% plot(signal(:,1));
stdb_Sig28 = signal(:,1);
stdb_Sig28 = stdb_Sig28(1000:1500);

[signal,Fs,tm]=rdsamp('stdb/315');
% plot(signal(:,1));
stdb_Sig29 = signal(:,1);
stdb_Sig29 = stdb_Sig29(1000:1500);

[signal,Fs,tm]=rdsamp('stdb/316');
% plot(signal(:,1));
stdb_Sig30 = signal(:,1);
stdb_Sig30 = stdb_Sig30(1000:1500);

[signal,Fs,tm]=rdsamp('stdb/317');
% plot(signal(:,1));
stdb_Sig31 = signal(:,1);
stdb_Sig31 = stdb_Sig31(1000:1500);

[signal,Fs,tm]=rdsamp('stdb/318');
% plot(signal(:,1));
stdb_Sig32 = signal(:,1);
stdb_Sig32 = stdb_Sig32(1000:1500);

% plot(signal(:,1));
stdb_Sig33 = signal(:,2);
stdb_Sig33 = stdb_Sig33(1000:1500);

[signal,Fs,tm]=rdsamp('stdb/320');
% plot(signal(:,1));
stdb_Sig34 = signal(:,1);
stdb_Sig34 = stdb_Sig34(1000:1500);

[signal,Fs,tm]=rdsamp('stdb/321');
% plot(signal(:,1));
stdb_Sig35 = signal(:,1);
stdb_Sig35 = stdb_Sig35(1000:1500);

[signal,Fs,tm]=rdsamp('stdb/322');
% plot(signal(:,1));
stdb_Sig36 = signal(:,1);
stdb_Sig36 = stdb_Sig36(1000:1500);

[signal,Fs,tm]=rdsamp('stdb/323');
% plot(signal(:,1));
stdb_Sig37 = signal(:,1);
stdb_Sig37 = stdb_Sig37(1000:1500);

[signal,Fs,tm]=rdsamp('stdb/324');
% plot(signal(:,1));
stdb_Sig38 = signal(:,1);
stdb_Sig38 = stdb_Sig38(1000:1500);

% plot(signal(:,2));
stdb_Sig39 = signal(:,1);
stdb_Sig39 = stdb_Sig39(1000:1500);

[signal,Fs,tm]=rdsamp('stdb/325');
% plot(signal(:,1));
stdb_Sig40 = signal(:,1);
stdb_Sig40 = stdb_Sig40(1000:1500);

% plot(signal(:,1));
stdb_Sig41 = signal(:,2);
stdb_Sig41 = stdb_Sig41(1000:1500);

[signal,Fs,tm]=rdsamp('stdb/326');
% plot(signal(:,1));
stdb_Sig42 = signal(:,1);
stdb_Sig42 = stdb_Sig42(1000:1500);

stdb_Sig43 = signal(:,2);
stdb_Sig43 = stdb_Sig43(1000:1500);

[signal,Fs,tm]=rdsamp('stdb/327');
% plot(signal(:,1));
stdb_Sig44 = signal(:,1);
stdb_Sig44 = stdb_Sig44(1000:1500);

% plot(signal(:,1));
stdb_Sig45 = signal(:,2);
stdb_Sig45 = stdb_Sig45(1000:1500);

for ix = 1:45
    if ix <= 9
        fig_id = figure(); plot(eval(['stdb_Sig0',num2str(ix)]));
        xlim([0,500]);
        saveas(fig_id,['C:\Users\shaya\Desktop\Images\Temp\','Sig0',num2str(ix),'.png']);
        Img1 = imread(['C:\Users\shaya\Desktop\Images\Temp\','Sig0',num2str(ix),'.png']);
        Img2 = imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]
        imwrite(Img2,[Image_Path,'\stdb\','Sig0',num2str(ix),'.png']);
        fig_id = figure(); spectrogram(eval(['stdb_Sig0',num2str(ix)]));
        saveas(fig_id,[Image_Path,'\stdb\','Spec0',num2str(ix),'.png']);
    else
        fig_id = figure(); plot(eval(['stdb_Sig',num2str(ix)]));
        xlim([0,500]);
        saveas(fig_id,['C:\Users\shaya\Desktop\Images\Temp\','Sig',num2str(ix),'.png']);
        Img1 = imread(['C:\Users\shaya\Desktop\Images\Temp\','Sig',num2str(ix),'.png']);
        Img2 = imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]
        imwrite(Img2,[Image_Path,'\stdb\','Sig',num2str(ix),'.png']);
        fig_id = figure(); spectrogram(eval(['stdb_Sig',num2str(ix)]));
        saveas(fig_id,[Image_Path,'\stdb\','Spec',num2str(ix),'.png']);
    end
end

close all; clc; fclose('all');
%% ---------- ST: The Long-Term ST Database (ltstdb) ----------

% caxis[min max]

[signal,Fs,tm]=rdsamp('ltstdb/s20011');
% plot(signal(:,1));
ltstdb_Sig01 = signal(:,1);
ltstdb_Sig01 = ltstdb_Sig01(1000:1500);

% plot(signal(:,2));
ltstdb_Sig02 = signal(:,2);
ltstdb_Sig02 = ltstdb_Sig02(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20021');
% plot(signal(:,1));
ltstdb_Sig03 = signal(:,1);
ltstdb_Sig03 = ltstdb_Sig03(1000:1500);

% plot(signal(:,2));
ltstdb_Sig04 = signal(:,2);
ltstdb_Sig04 = ltstdb_Sig04(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20031');
% plot(signal(:,1));
ltstdb_Sig05 = signal(:,1);
ltstdb_Sig05 = ltstdb_Sig05(1000:1500);

% plot(signal(:,2));
ltstdb_Sig06 = signal(:,2);
ltstdb_Sig06 = ltstdb_Sig06(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20041');
% plot(signal(:,1));
ltstdb_Sig07 = signal(:,1);
ltstdb_Sig07 = ltstdb_Sig07(1000:1500);

% plot(signal(:,2));
ltstdb_Sig08 = signal(:,2);
ltstdb_Sig08 = ltstdb_Sig08(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20051');
% plot(signal(:,1));
ltstdb_Sig09 = signal(:,1);
ltstdb_Sig09 = ltstdb_Sig09(1000:1500);

% plot(signal(:,2));
ltstdb_Sig10 = signal(:,2);
ltstdb_Sig10 = ltstdb_Sig10(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20061');
% plot(signal(:,1));
ltstdb_Sig11 = signal(:,1);
ltstdb_Sig11 = ltstdb_Sig11(1000:1500);

% plot(signal(:,2));
ltstdb_Sig12 = signal(:,2);
ltstdb_Sig12 = ltstdb_Sig12(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20071');
% plot(signal(:,1));
ltstdb_Sig13 = signal(:,1);
ltstdb_Sig13 = ltstdb_Sig13(1000:1500);

% plot(signal(:,2));
ltstdb_Sig14 = signal(:,2);
ltstdb_Sig14 = ltstdb_Sig14(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20081');
% plot(signal(:,1));
ltstdb_Sig15 = signal(:,1);
ltstdb_Sig15 = ltstdb_Sig15(1000:1500);

% plot(signal(:,2));
ltstdb_Sig16 = signal(:,2);
ltstdb_Sig16 = ltstdb_Sig16(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20091');
% plot(signal(:,1));
ltstdb_Sig17 = signal(:,1);
ltstdb_Sig17 = ltstdb_Sig17(1000:1500);

% plot(signal(:,2));
ltstdb_Sig18 = signal(:,2);
ltstdb_Sig18 = ltstdb_Sig18(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20101');
% plot(signal(:,1));
ltstdb_Sig19 = signal(:,1);
ltstdb_Sig19 = ltstdb_Sig19(1000:1500);

% plot(signal(:,2));
ltstdb_Sig20 = signal(:,2);
ltstdb_Sig20 = ltstdb_Sig20(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20111');
% plot(signal(:,1));
ltstdb_Sig21 = signal(:,1);
ltstdb_Sig21 = ltstdb_Sig21(1000:1500);

% plot(signal(:,2));
ltstdb_Sig22 = signal(:,2);
ltstdb_Sig22 = ltstdb_Sig22(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20121');
% plot(signal(:,1));
ltstdb_Sig23 = signal(:,1);
ltstdb_Sig23 = ltstdb_Sig23(1000:1500);

% plot(signal(:,2));
ltstdb_Sig24 = signal(:,2);
ltstdb_Sig24 = ltstdb_Sig24(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20131');
% plot(signal(:,1));
ltstdb_Sig25 = signal(:,1);
ltstdb_Sig25 = ltstdb_Sig25(1000:1500);

% plot(signal(:,2));
ltstdb_Sig26 = signal(:,2);
ltstdb_Sig26 = ltstdb_Sig26(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20141');
% plot(signal(:,1));
ltstdb_Sig27 = signal(:,1);
ltstdb_Sig27 = ltstdb_Sig27(1000:1500);

% plot(signal(:,2));
ltstdb_Sig28 = signal(:,2);
ltstdb_Sig28 = ltstdb_Sig28(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20151');
% plot(signal(:,1));
ltstdb_Sig29 = signal(:,1);
ltstdb_Sig29 = ltstdb_Sig29(1000:1500);

% plot(signal(:,2));
ltstdb_Sig30 = signal(:,2);
ltstdb_Sig30 = ltstdb_Sig30(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20161');
% plot(signal(:,1));
ltstdb_Sig31 = signal(:,1);
ltstdb_Sig31 = ltstdb_Sig31(1000:1500);

% plot(signal(:,2));
ltstdb_Sig32 = signal(:,2);
ltstdb_Sig32 = ltstdb_Sig32(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20171');
% plot(signal(:,1));
ltstdb_Sig33 = signal(:,1);
ltstdb_Sig33 = ltstdb_Sig33(1000:1500);

% plot(signal(:,2));
ltstdb_Sig34 = signal(:,2);
ltstdb_Sig34 = ltstdb_Sig34(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20181');
% plot(signal(:,1));
ltstdb_Sig35 = signal(:,1);
ltstdb_Sig35 = ltstdb_Sig35(1000:1500);

% plot(signal(:,2));
ltstdb_Sig36 = signal(:,2);
ltstdb_Sig36 = ltstdb_Sig36(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20191');
% plot(signal(:,1));
ltstdb_Sig37 = signal(:,1);
ltstdb_Sig37 = ltstdb_Sig37(1000:1500);

% plot(signal(:,2));
ltstdb_Sig38 = signal(:,2);
ltstdb_Sig38 = ltstdb_Sig38(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20201');
% plot(signal(:,1));
ltstdb_Sig39 = signal(:,1);
ltstdb_Sig39 = ltstdb_Sig39(1000:1500);

% plot(signal(:,2));
ltstdb_Sig40 = signal(:,2);
ltstdb_Sig40 = ltstdb_Sig40(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20211');
% plot(signal(:,1));
ltstdb_Sig41 = signal(:,1);
ltstdb_Sig41 = ltstdb_Sig41(1000:1500);

% plot(signal(:,2));
ltstdb_Sig42 = signal(:,2);
ltstdb_Sig42 = ltstdb_Sig42(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20221');
% plot(signal(:,1));
ltstdb_Sig43 = signal(:,1);
ltstdb_Sig43 = ltstdb_Sig43(1000:1500);

% plot(signal(:,2));
ltstdb_Sig44 = signal(:,2);
ltstdb_Sig44 = ltstdb_Sig44(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20231');
% plot(signal(:,1));
ltstdb_Sig45 = signal(:,1);
ltstdb_Sig45 = ltstdb_Sig45(1000:1500);

% plot(signal(:,2));
ltstdb_Sig46 = signal(:,2);
ltstdb_Sig46 = ltstdb_Sig46(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20241');
% plot(signal(:,1));
ltstdb_Sig47 = signal(:,1);
ltstdb_Sig47 = ltstdb_Sig47(1000:1500);

% plot(signal(:,2));
ltstdb_Sig48 = signal(:,2);
ltstdb_Sig48 = ltstdb_Sig48(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20251');
% plot(signal(:,1));
ltstdb_Sig49 = signal(:,1);
ltstdb_Sig49 = ltstdb_Sig49(1000:1500);

% plot(signal(:,2));
ltstdb_Sig50 = signal(:,2);
ltstdb_Sig50 = ltstdb_Sig50(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20261');
% plot(signal(:,1));
ltstdb_Sig51 = signal(:,1);
ltstdb_Sig51 = ltstdb_Sig51(1000:1500);

% plot(signal(:,2));
ltstdb_Sig52 = signal(:,2);
ltstdb_Sig52 = ltstdb_Sig52(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20271');
% plot(signal(:,1));
ltstdb_Sig53 = signal(:,1);
ltstdb_Sig53 = ltstdb_Sig53(1000:1500);

% plot(signal(:,2));
ltstdb_Sig54 = signal(:,2);
ltstdb_Sig54 = ltstdb_Sig54(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20272');
% plot(signal(:,1));
ltstdb_Sig55 = signal(:,1);
ltstdb_Sig55 = ltstdb_Sig55(1000:1500);

% plot(signal(:,2));
ltstdb_Sig56 = signal(:,2);
ltstdb_Sig56 = ltstdb_Sig56(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20273');
% plot(signal(:,1));
ltstdb_Sig57 = signal(:,1);
ltstdb_Sig57 = ltstdb_Sig57(1000:1500);

% plot(signal(:,2));
ltstdb_Sig58 = signal(:,2);
ltstdb_Sig58 = ltstdb_Sig58(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20274');
% plot(signal(:,1));
ltstdb_Sig59 = signal(:,1);
ltstdb_Sig59 = ltstdb_Sig59(1000:1500);

% plot(signal(:,2));
ltstdb_Sig60 = signal(:,2);
ltstdb_Sig60 = ltstdb_Sig60(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20281');
% plot(signal(:,1));
ltstdb_Sig61 = signal(:,1);
ltstdb_Sig61 = ltstdb_Sig61(1000:1500);

% plot(signal(:,2));
ltstdb_Sig62 = signal(:,2);
ltstdb_Sig62 = ltstdb_Sig62(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20291');
% plot(signal(:,1));
ltstdb_Sig63 = signal(:,1);
ltstdb_Sig63 = ltstdb_Sig63(1000:1500);

% plot(signal(:,2));
ltstdb_Sig64 = signal(:,2);
ltstdb_Sig64 = ltstdb_Sig64(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20301');
% plot(signal(:,1));
ltstdb_Sig65 = signal(:,1);
ltstdb_Sig65 = ltstdb_Sig65(1000:1500);

% plot(signal(:,2));
ltstdb_Sig66 = signal(:,2);
ltstdb_Sig66 = ltstdb_Sig66(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20311');
% plot(signal(:,1));
ltstdb_Sig67 = signal(:,1);
ltstdb_Sig67 = ltstdb_Sig67(1000:1500);

% plot(signal(:,2));
ltstdb_Sig68 = signal(:,2);
ltstdb_Sig68 = ltstdb_Sig68(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20321');
% plot(signal(:,1));
ltstdb_Sig69 = signal(:,1);
ltstdb_Sig69 = ltstdb_Sig69(1000:1500);

% plot(signal(:,2));
ltstdb_Sig70 = signal(:,2);
ltstdb_Sig70 = ltstdb_Sig70(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20331');
% plot(signal(:,1));
ltstdb_Sig71 = signal(:,1);
ltstdb_Sig71 = ltstdb_Sig71(1000:1500);

% plot(signal(:,2));
ltstdb_Sig72 = signal(:,2);
ltstdb_Sig72 = ltstdb_Sig72(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20341');
% plot(signal(:,1));
ltstdb_Sig73 = signal(:,1);
ltstdb_Sig73 = ltstdb_Sig73(1000:1500);

% plot(signal(:,2));
ltstdb_Sig74 = signal(:,2);
ltstdb_Sig74 = ltstdb_Sig74(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20351');
% plot(signal(:,1));
ltstdb_Sig75 = signal(:,1);
ltstdb_Sig75 = ltstdb_Sig=75(1000:1500);

% plot(signal(:,2));
ltstdb_Sig76 = signal(:,2);
ltstdb_Sig76 = ltstdb_Sig76(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20361');
% plot(signal(:,1));
ltstdb_Sig77 = signal(:,1);
ltstdb_Sig77 = ltstdb_Sig77(1000:1500);

% plot(signal(:,2));
ltstdb_Sig78 = signal(:,2);
ltstdb_Sig78 = ltstdb_Sig78(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20371');
% plot(signal(:,1));
ltstdb_Sig79 = signal(:,1);
ltstdb_Sig79 = ltstdb_Sig79(1000:1500);

% plot(signal(:,2));
ltstdb_Sig80 = signal(:,2);
ltstdb_Sig80 = ltstdb_Sig80(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20381');
% plot(signal(:,1));
ltstdb_Sig81 = signal(:,1);
ltstdb_Sig81 = ltstdb_Sig81(1000:1500);

% plot(signal(:,2));
ltstdb_Sig82 = signal(:,2);
ltstdb_Sig82 = ltstdb_Sig82(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20391');
% plot(signal(:,1));
ltstdb_Sig83 = signal(:,1);
ltstdb_Sig83 = ltstdb_Sig83(1000:1500);

% plot(signal(:,2));
ltstdb_Sig84 = signal(:,2);
ltstdb_Sig84 = ltstdb_Sig84(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20401');
% plot(signal(:,1));
ltstdb_Sig85 = signal(:,1);
ltstdb_Sig85 = ltstdb_Sig85(1000:1500);

% plot(signal(:,2));
ltstdb_Sig86 = signal(:,2);
ltstdb_Sig86 = ltstdb_Sig86(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20411');
% plot(signal(:,1));
ltstdb_Sig87 = signal(:,1);
ltstdb_Sig87 = ltstdb_Sig87(1000:1500);

% plot(signal(:,2));
ltstdb_Sig88 = signal(:,2);
ltstdb_Sig88 = ltstdb_Sig88(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20421');
% plot(signal(:,1));
ltstdb_Sig89 = signal(:,1);
ltstdb_Sig89 = ltstdb_Sig89(1000:1500);

% plot(signal(:,2));
ltstdb_Sig90 = signal(:,2);
ltstdb_Sig90 = ltstdb_Sig90(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20431');
% plot(signal(:,1));
ltstdb_Sig91 = signal(:,1);
ltstdb_Sig91 = ltstdb_Sig91(1000:1500);

% plot(signal(:,2));
ltstdb_Sig92 = signal(:,2);
ltstdb_Sig92 = ltstdb_Sig92(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20441');
% plot(signal(:,1));
ltstdb_Sig93 = signal(:,1);
ltstdb_Sig93 = ltstdb_Sig93(1000:1500);

% plot(signal(:,2));
ltstdb_Sig94 = signal(:,2);
ltstdb_Sig94 = ltstdb_Sig94(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20451');
% plot(signal(:,1));
ltstdb_Sig95 = signal(:,1);
ltstdb_Sig95 = ltstdb_Sig95(1000:1500);

% plot(signal(:,2));
ltstdb_Sig96 = signal(:,2);
ltstdb_Sig96 = ltstdb_Sig96(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20461');
% plot(signal(:,1));
ltstdb_Sig97 = signal(:,1);
ltstdb_Sig97 = ltstdb_Sig97(1000:1500);

% plot(signal(:,2));
ltstdb_Sig98 = signal(:,2);
ltstdb_Sig98 = ltstdb_Sig98(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20471');
% plot(signal(:,1));
ltstdb_Sig99 = signal(:,1);
ltstdb_Sig99 = ltstdb_Sig99(1000:1500);

% plot(signal(:,2));
ltstdb_Sig100 = signal(:,2);
ltstdb_Sig100 = ltstdb_Sig100(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20481');
% plot(signal(:,1));
ltstdb_Sig101 = signal(:,1);
ltstdb_Sig101 = ltstdb_Sig101(1000:1500);

% plot(signal(:,2));
ltstdb_Sig102 = signal(:,2);
ltstdb_Sig102 = ltstdb_Sig102(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20491');
% plot(signal(:,1));
ltstdb_Sig103 = signal(:,1);
ltstdb_Sig103 = ltstdb_Sig103(1000:1500);

% plot(signal(:,2));
ltstdb_Sig104 = signal(:,2);
ltstdb_Sig104 = ltstdb_Sig104(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20501');
% plot(signal(:,1));
ltstdb_Sig105 = signal(:,1);
ltstdb_Sig105 = ltstdb_Sig105(1000:1500);

% plot(signal(:,2));
ltstdb_Sig106 = signal(:,2);
ltstdb_Sig106 = ltstdb_Sig106(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20511');
% plot(signal(:,1));
ltstdb_Sig107 = signal(:,1);
ltstdb_Sig107 = ltstdb_Sig107(1000:1500);

% plot(signal(:,2));
ltstdb_Sig108 = signal(:,2);
ltstdb_Sig108 = ltstdb_Sig108(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20521');
% plot(signal(:,1));
ltstdb_Sig109 = signal(:,1);
ltstdb_Sig109 = ltstdb_Sig109(1000:1500);

% plot(signal(:,2));
ltstdb_Sig110 = signal(:,2);
ltstdb_Sig110 = ltstdb_Sig110(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20531');
% plot(signal(:,1));
ltstdb_Sig111 = signal(:,1);
ltstdb_Sig111 = ltstdb_Sig111(1000:1500);

% plot(signal(:,2));
ltstdb_Sig112 = signal(:,2);
ltstdb_Sig112 = ltstdb_Sig112(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20541');
% plot(signal(:,1));
ltstdb_Sig113 = signal(:,1);
ltstdb_Sig113 = ltstdb_Sig113(1000:1500);

% plot(signal(:,2));
ltstdb_Sig114 = signal(:,2);
ltstdb_Sig114 = ltstdb_Sig114(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20551');
% plot(signal(:,1));
ltstdb_Sig115 = signal(:,1);
ltstdb_Sig115 = ltstdb_Sig115(1000:1500);

% plot(signal(:,2));
ltstdb_Sig116 = signal(:,2);
ltstdb_Sig116 = ltstdb_Sig116(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20561');
% plot(signal(:,1));
ltstdb_Sig117 = signal(:,1);
ltstdb_Sig117 = ltstdb_Sig117(1000:1500);

% plot(signal(:,2));
ltstdb_Sig118 = signal(:,2);
ltstdb_Sig118 = ltstdb_Sig118(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20571');
% plot(signal(:,1));
ltstdb_Sig119 = signal(:,1);
ltstdb_Sig119 = ltstdb_Sig119(1000:1500);

% plot(signal(:,2));
ltstdb_Sig120 = signal(:,2);
ltstdb_Sig120 = ltstdb_Sig120(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20581');
% plot(signal(:,1));
ltstdb_Sig121 = signal(:,1);
ltstdb_Sig121 = ltstdb_Sig121(1000:1500);

% plot(signal(:,2));
ltstdb_Sig122 = signal(:,2);
ltstdb_Sig122 = ltstdb_Sig122(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20591');
% plot(signal(:,1));
ltstdb_Sig123 = signal(:,1);
ltstdb_Sig123 = ltstdb_Sig123(1000:1500);

% plot(signal(:,2));
ltstdb_Sig124 = signal(:,2);
ltstdb_Sig124 = ltstdb_Sig124(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20601');
% plot(signal(:,1));
ltstdb_Sig125 = signal(:,1);
ltstdb_Sig125 = ltstdb_Sig125(1000:1500);

% plot(signal(:,2));
ltstdb_Sig126 = signal(:,2);
ltstdb_Sig126 = ltstdb_Sig126(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20611');
% plot(signal(:,1));
ltstdb_Sig127 = signal(:,1);
ltstdb_Sig127 = ltstdb_Sig127(1000:1500);

% plot(signal(:,2));
ltstdb_Sig128 = signal(:,2);
ltstdb_Sig128 = ltstdb_Sig128(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20621');
% plot(signal(:,1));
ltstdb_Sig129 = signal(:,1);
ltstdb_Sig129 = ltstdb_Sig129(1000:1500);

% plot(signal(:,2));
ltstdb_Sig130 = signal(:,2);
ltstdb_Sig130 = ltstdb_Sig130(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20631');
% plot(signal(:,1));
ltstdb_Sig131 = signal(:,1);
ltstdb_Sig131 = ltstdb_Sig131(1000:1500);

% plot(signal(:,2));
ltstdb_Sig132 = signal(:,2);
ltstdb_Sig132 = ltstdb_Sig132(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20641');
% plot(signal(:,1));
ltstdb_Sig133 = signal(:,1);
ltstdb_Sig133 = ltstdb_Sig133(1000:1500);

% plot(signal(:,2));
ltstdb_Sig134 = signal(:,2);
ltstdb_Sig134 = ltstdb_Sig134(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s20651');
% plot(signal(:,1));
ltstdb_Sig135 = signal(:,1);
ltstdb_Sig135 = ltstdb_Sig135(1000:1500);

% plot(signal(:,2));
ltstdb_Sig136 = signal(:,2);
ltstdb_Sig136 = ltstdb_Sig136(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s30661');
% plot(signal(:,1));
ltstdb_Sig137 = signal(:,1);
ltstdb_Sig137 = ltstdb_Sig137(1000:1500);

% plot(signal(:,2));
ltstdb_Sig138 = signal(:,2);
ltstdb_Sig138 = ltstdb_Sig138(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s30671');
% plot(signal(:,1));
ltstdb_Sig139 = signal(:,1);
ltstdb_Sig139 = ltstdb_Sig139(1000:1500);

% plot(signal(:,2));
ltstdb_Sig140 = signal(:,2);
ltstdb_Sig140 = ltstdb_Sig140(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s30681');
% plot(signal(:,1));
ltstdb_Sig141 = signal(:,1);
ltstdb_Sig141 = ltstdb_Sig141(1000:1500);

% plot(signal(:,2));
ltstdb_Sig142 = signal(:,2);
ltstdb_Sig142 = ltstdb_Sig142(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s30691');
% plot(signal(:,1));
ltstdb_Sig143 = signal(:,1);
ltstdb_Sig143 = ltstdb_Sig143(1000:1500);

% plot(signal(:,2));
ltstdb_Sig144 = signal(:,2);
ltstdb_Sig144 = ltstdb_Sig144(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s30701');
% plot(signal(:,1));
ltstdb_Sig145 = signal(:,1);
ltstdb_Sig145 = ltstdb_Sig145(1000:1500);

% plot(signal(:,2));
ltstdb_Sig146 = signal(:,2);
ltstdb_Sig146 = ltstdb_Sig146(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s30711');
% plot(signal(:,1));
ltstdb_Sig147 = signal(:,1);
ltstdb_Sig147 = ltstdb_Sig147(1000:1500);

% plot(signal(:,2));
ltstdb_Sig148 = signal(:,2);
ltstdb_Sig148 = ltstdb_Sig148(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s30721');
% plot(signal(:,1));
ltstdb_Sig149 = signal(:,1);
ltstdb_Sig149 = ltstdb_Sig149(1000:1500);

% plot(signal(:,2));
ltstdb_Sig150 = signal(:,2);
ltstdb_Sig150 = ltstdb_Sig150(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s30731');
% plot(signal(:,1));
ltstdb_Sig151 = signal(:,1);
ltstdb_Sig151 = ltstdb_Sig151(1000:1500);

% plot(signal(:,2));
ltstdb_Sig152 = signal(:,2);
ltstdb_Sig152 = ltstdb_Sig152(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s30732');
% plot(signal(:,1));
ltstdb_Sig153 = signal(:,1);
ltstdb_Sig153 = ltstdb_Sig153(1000:1500);

% plot(signal(:,2));
ltstdb_Sig154 = signal(:,2);
ltstdb_Sig154 = ltstdb_Sig154(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s30741');
% plot(signal(:,1));
ltstdb_Sig155 = signal(:,1);
ltstdb_Sig155 = ltstdb_Sig155(1000:1500);

% plot(signal(:,2));
ltstdb_Sig156 = signal(:,2);
ltstdb_Sig156 = ltstdb_Sig156(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s30742');
% plot(signal(:,1));
ltstdb_Sig157 = signal(:,1);
ltstdb_Sig157 = ltstdb_Sig157(1000:1500);

% plot(signal(:,2));
ltstdb_Sig158 = signal(:,2);
ltstdb_Sig158 = ltstdb_Sig158(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s30751');
% plot(signal(:,1));
ltstdb_Sig159 = signal(:,1);
ltstdb_Sig159 = ltstdb_Sig159(1000:1500);

% plot(signal(:,2));
ltstdb_Sig160 = signal(:,2);
ltstdb_Sig160 = ltstdb_Sig160(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s30752');
% plot(signal(:,1));
ltstdb_Sig161 = signal(:,1);
ltstdb_Sig161 = ltstdb_Sig161(1000:1500);

% plot(signal(:,2));
ltstdb_Sig162 = signal(:,2);
ltstdb_Sig162 = ltstdb_Sig162(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s30761');
% plot(signal(:,1));
ltstdb_Sig163 = signal(:,1);
ltstdb_Sig163 = ltstdb_Sig163(1000:1500);

% plot(signal(:,2));
ltstdb_Sig164 = signal(:,2);
ltstdb_Sig164 = ltstdb_Sig164(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s30771');
% plot(signal(:,1));
ltstdb_Sig165 = signal(:,1);
ltstdb_Sig165 = ltstdb_Sig165(1000:1500);

% plot(signal(:,2));
ltstdb_Sig166 = signal(:,2);
ltstdb_Sig166 = ltstdb_Sig166(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s30781');
% plot(signal(:,1));
ltstdb_Sig167 = signal(:,1);
ltstdb_Sig167 = ltstdb_Sig167(1000:1500);

% plot(signal(:,2));
ltstdb_Sig168 = signal(:,2);
ltstdb_Sig168 = ltstdb_Sig168(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s30791');
% plot(signal(:,1));
ltstdb_Sig169 = signal(:,1);
ltstdb_Sig169 = ltstdb_Sig169(1000:1500);

% plot(signal(:,2));
ltstdb_Sig170 = signal(:,2);
ltstdb_Sig170 = ltstdb_Sig170(1000:1500);

[signal,Fs,tm]=rdsamp('ltstdb/s30801');
% plot(signal(:,1));
ltstdb_Sig171 = signal(:,1);
ltstdb_Sig171 = ltstdb_Sig171(1000:1500);

% plot(signal(:,2));
ltstdb_Sig172 = signal(:,2);
ltstdb_Sig172 = ltstdb_Sig172(1000:1500);

for ix = 1:172
    if ix <= 9
        fig_id = figure(); plot(eval(['ltstdb_Sig0',num2str(ix)]));
        xlim([0,500]);
        saveas(fig_id,['C:\Users\shaya\Desktop\Images\Temp\','Sig0',num2str(ix),'.png']);
        Img1 = imread(['C:\Users\shaya\Desktop\Images\Temp\','Sig0',num2str(ix),'.png']);
        Img2 = imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]
        imwrite(Img2,[Image_Path,'\ltstdb\','Sig0',num2str(ix),'.png']);
        fig_id = figure(); spectrogram(eval(['ltstdb_Sig0',num2str(ix)]));
        saveas(fig_id,[Image_Path,'\ltstdb\','Spec0',num2str(ix),'.png']);
    else
        fig_id = figure(); plot(eval(['ltstdb_Sig',num2str(ix)]));
        xlim([0,500]);
        saveas(fig_id,['C:\Users\shaya\Desktop\Images\Temp\','Sig',num2str(ix),'.png']);
        Img1 = imread(['C:\Users\shaya\Desktop\Images\Temp\','Sig',num2str(ix),'.png']);
        Img2 = imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]      
        saveas(Img2,[Image_Path,'\ltstdb\','Sig',num2str(ix),'.png']);
        fig_id = figure(); spectrogram(eval(['ltstdb_Sig',num2str(ix)]));
        saveas(fig_id,[Image_Path,'\ltstdb\','Spec',num2str(ix),'.png']);
    end
end

close all; clc; fclose('all');

%% ---------- AF: MIT-BIH Atrial Fibrillation Database (afdb) ----------
[signal,Fs,tm]=rdsamp('afdb/04015');
% plot(signal(:,1));
afdb_Sig01 = signal(:,1);
afdb_Sig01 = afdb_Sig01(1000:1500);

afdb_Sig02 = signal(:,1);
afdb_Sig02 = afdb_Sig02(1000:1500);

[signal,Fs,tm]=rdsamp('afdb/04043');
% plot(signal(:,1));
afdb_Sig03 = signal(:,1);
afdb_Sig03 = afdb_Sig03((1000:1500));

afdb_Sig04 = signal(:,1);
afdb_Sig04 = afdb_Sig04((1000:1500));

[signal,Fs,tm]=rdsamp('afdb/04048');
% plot(signal(:,1));
afdb_Sig05 = signal(:,1);
afdb_Sig05 = afdb_Sig05((1000:1500));

afdb_Sig06 = signal(:,1);
afdb_Sig06 = afdb_Sig06((1000:1500));

[signal,Fs,tm]=rdsamp('afdb/04126');
% plot(signal(:,1));
afdb_Sig07 = signal(:,1);
afdb_Sig07 = afdb_Sig07((1000:1500));

afdb_Sig08 = signal(:,1);
afdb_Sig08 = afdb_Sig08((1000:1500));

[signal,Fs,tm]=rdsamp('afdb/04746');
% plot(signal(:,1));
afdb_Sig09 = signal(:,1);
afdb_Sig09 = afdb_Sig09((1000:1500));

afdb_Sig10 = signal(:,1);
afdb_Sig10 = afdb_Sig10((1000:1500));

[signal,Fs,tm]=rdsamp('afdb/04908');
% plot(signal(:,1));
afdb_Sig11 = signal(:,1);
afdb_Sig11 = afdb_Sig11((1000:1500));

afdb_Sig12 = signal(:,1);
afdb_Sig12 = afdb_Sig12((1000:1500));

[signal,Fs,tm]=rdsamp('afdb/04936');
% plot(signal(:,1));
afdb_Sig13 = signal(:,1);
afdb_Sig13 = afdb_Sig13((1000:1500));

afdb_Sig14 = signal(:,1);
afdb_Sig14 = afdb_Sig14((1000:1500));

[signal,Fs,tm]=rdsamp('afdb/05091');
% plot(signal(:,1));
afdb_Sig15 = signal(:,1);
afdb_Sig15 = afdb_Sig15((1000:1500));

afdb_Sig16 = signal(:,1);
afdb_Sig16 = afdb_Sig16((1000:1500));

[signal,Fs,tm]=rdsamp('afdb/05121');
% plot(signal(:,1));
afdb_Sig17 = signal(:,1);
afdb_Sig17 = afdb_Sig17((1000:1500));

afdb_Sig18 = signal(:,1);
afdb_Sig18 = afdb_Sig18((1000:1500));

[signal,Fs,tm]=rdsamp('afdb/05261');
% plot(signal(:,1));
afdb_Sig19 = signal(:,1);
afdb_Sig19 = afdb_Sig19((1000:1500));

afdb_Sig20 = signal(:,1);
afdb_Sig20 = afdb_Sig20((1000:1500));

[signal,Fs,tm]=rdsamp('afdb/06426');
% plot(signal(:,1));
afdb_Sig21 = signal(:,1);
afdb_Sig21 = afdb_Sig21((1000:1500));

afdb_Sig22 = signal(:,1);
afdb_Sig22 = afdb_Sig22((1000:1500));

[signal,Fs,tm]=rdsamp('afdb/06453');
% plot(signal(:,1));
afdb_Sig23 = signal(:,1);
afdb_Sig23 = afdb_Sig23((1000:1500));

afdb_Sig24 = signal(:,1);
afdb_Sig24 = afdb_Sig24((1000:1500));

[signal,Fs,tm]=rdsamp('afdb/06995');
% plot(signal(:,1));
afdb_Sig25 = signal(:,1);
afdb_Sig25 = afdb_Sig25((1000:1500));

afdb_Sig26 = signal(:,1);
afdb_Sig26 = afdb_Sig26((1000:1500));

[signal,Fs,tm]=rdsamp('afdb/07162');
% plot(signal(:,1));
afdb_Sig27 = signal(:,1);
afdb_Sig27 = afdb_Sig27((1000:1500));

afdb_Sig28 = signal(:,1);
afdb_Sig28 = afdb_Sig28((1000:1500));

[signal,Fs,tm]=rdsamp('afdb/07859');
% plot(signal(:,1));
afdb_Sig29 = signal(:,1);
afdb_Sig29 = afdb_Sig29((1000:1500));

afdb_Sig30 = signal(:,1);
afdb_Sig30 = afdb_Sig30((1000:1500));

[signal,Fs,tm]=rdsamp('afdb/07879');
% plot(signal(:,1));
afdb_Sig31 = signal(:,1);
afdb_Sig31 = afdb_Sig31((1000:1500));

afdb_Sig32 = signal(:,1);
afdb_Sig32 = afdb_Sig32((1000:1500));

[signal,Fs,tm]=rdsamp('afdb/07910');
% plot(signal(:,1));
afdb_Sig33 = signal(:,1);
afdb_Sig33 = afdb_Sig33((1000:1500));

afdb_Sig34 = signal(:,1);
afdb_Sig34 = afdb_Sig34((1000:1500));

[signal,Fs,tm]=rdsamp('afdb/08215');
% plot(signal(:,1));
afdb_Sig35 = signal(:,1);
afdb_Sig35 = afdb_Sig35((1000:1500));

afdb_Sig36 = signal(:,1);
afdb_Sig36 = afdb_Sig36((1000:1500));

[signal,Fs,tm]=rdsamp('afdb/08219');
% plot(signal(:,1));
afdb_Sig37 = signal(:,1);
afdb_Sig37 = afdb_Sig37((1000:1500));

afdb_Sig38 = signal(:,1);
afdb_Sig38 = afdb_Sig38((1000:1500));

[signal,Fs,tm]=rdsamp('afdb/08378');
% plot(signal(:,1));
afdb_Sig39 = signal(:,1);
afdb_Sig39 = afdb_Sig39((1000:1500));

afdb_Sig40 = signal(:,1);
afdb_Sig40 = afdb_Sig40((1000:1500));

[signal,Fs,tm]=rdsamp('afdb/08405');
% plot(signal(:,1));
afdb_Sig41 = signal(:,1);
afdb_Sig41 = afdb_Sig41((1000:1500));

afdb_Sig42 = signal(:,1);
afdb_Sig42 = afdb_Sig42((1000:1500));

[signal,Fs,tm]=rdsamp('afdb/08434');
% plot(signal(:,1));
afdb_Sig43 = signal(:,1);
afdb_Sig43 = afdb_Sig43((1000:1500));

afdb_Sig44 = signal(:,1);
afdb_Sig44 = afdb_Sig44((1000:1500));

[signal,Fs,tm]=rdsamp('afdb/08455');
% plot(signal(:,1));
afdb_Sig45 = signal(:,1);
afdb_Sig45 = afdb_Sig45((1000:1500));

afdb_Sig46 = signal(:,1);
afdb_Sig46 = afdb_Sig46((1000:1500));

for ix = 1:46
    if ix <= 9
        fig_id = figure(); plot(eval(['afdb_Sig0',num2str(ix)]));
        xlim([0,500]);
        saveas(fig_id,['C:\Users\shaya\Desktop\Images\Temp\','Sig0',num2str(ix),'.png']);
        Img1 = imread(['C:\Users\shaya\Desktop\Images\Temp\','Sig0',num2str(ix),'.png']);
        Img2 = imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]
        imwrite(Img2,[Image_Path,'\afdb\','Sig0',num2str(ix),'.png']);
        fig_id = figure(); spectrogram(eval(['afdb_Sig0',num2str(ix)]));
        saveas(fig_id,[Image_Path,'\afdb\','Spec0',num2str(ix),'.png']);
    else
        fig_id = figure(); plot(eval(['afdb_Sig',num2str(ix)]));
        xlim([0,500]);
        saveas(fig_id,['C:\Users\shaya\Desktop\Images\Temp\','Sig',num2str(ix),'.png']);
        Img1 = imread(['C:\Users\shaya\Desktop\Images\Temp\','Sig',num2str(ix),'.png']);
        Img2 = imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]       
        saveas(Img2,[Image_Path,'\afdb\','Sig',num2str(ix),'.png']);
        fig_id = figure(); spectrogram(eval(['afdb_Sig',num2str(ix)]));
        saveas(fig_id,[Image_Path,'\afdb\','Spec',num2str(ix),'.png']);
    end
end

close all; clc; fclose('all');

%% ---------- AF: The Long-Term AF Database (ltafdb) ----------

[signal,Fs,tm]=rdsamp('ltafdb/00');
% plot(signal(:,1));
ltafdb_Sig01 = signal(:,1);
ltafdb_Sig01 = ltafdb_Sig01(2e6:2e6+500);

ltafdb_Sig02 = signal(:,2);
ltafdb_Sig02 = ltafdb_Sig02(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/01');
% plot(signal(:,1));
ltafdb_Sig03 = signal(:,1);
ltafdb_Sig03 = ltafdb_Sig03(2e6:2e6+500);

ltafdb_Sig04 = signal(:,2);
ltafdb_Sig04 = ltafdb_Sig04(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/03');
% plot(signal(:,1));
ltafdb_Sig05 = signal(:,1);
ltafdb_Sig05 = ltafdb_Sig05(2e6:2e6+500);

ltafdb_Sig06 = signal(:,2);
ltafdb_Sig06 = ltafdb_Sig06(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/05');
% plot(signal(:,1));
ltafdb_Sig07 = signal(:,1);
ltafdb_Sig07 = ltafdb_Sig07(2e6:2e6+500);

ltafdb_Sig08 = signal(:,2);
ltafdb_Sig08 = ltafdb_Sig08(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/06');
% plot(signal(:,1));
ltafdb_Sig09 = signal(:,1);
ltafdb_Sig09 = ltafdb_Sig09(2e6:2e6+500);

ltafdb_Sig10 = signal(:,2);
ltafdb_Sig10 = ltafdb_Sig10(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/07');
% plot(signal(:,1));
ltafdb_Sig11 = signal(:,1);
ltafdb_Sig11 = ltafdb_Sig11(2e6:2e6+500);

ltafdb_Sig12 = signal(:,2);
ltafdb_Sig12 = ltafdb_Sig12(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/08');
% plot(signal(:,1));
ltafdb_Sig13 = signal(:,1);
ltafdb_Sig13 = ltafdb_Sig13(2e6:2e6+500);

ltafdb_Sig14 = signal(:,2);
ltafdb_Sig14 = ltafdb_Sig14(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/10');
% plot(signal(:,1));
ltafdb_Sig15 = signal(:,1);
ltafdb_Sig15 = ltafdb_Sig15(2e6:2e6+500);

ltafdb_Sig16 = signal(:,2);
ltafdb_Sig16 = ltafdb_Sig16(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/100');
% plot(signal(:,1));
ltafdb_Sig17 = signal(:,1);
ltafdb_Sig17 = ltafdb_Sig17(2e6:2e6+500);

ltafdb_Sig18 = signal(:,2);
ltafdb_Sig18 = ltafdb_Sig18(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/101');
% plot(signal(:,1));
ltafdb_Sig19 = signal(:,1);
ltafdb_Sig19 = ltafdb_Sig19(2e6:2e6+500);

ltafdb_Sig20 = signal(:,2);
ltafdb_Sig20 = ltafdb_Sig20(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/102');
% plot(signal(:,1));
ltafdb_Sig21 = signal(:,1);
ltafdb_Sig21 = ltafdb_Sig21(2e6:2e6+500);

ltafdb_Sig22 = signal(:,2);
ltafdb_Sig22 = ltafdb_Sig22(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/103');
% plot(signal(:,1));
ltafdb_Sig23 = signal(:,1);
ltafdb_Sig23 = ltafdb_Sig23(2e6:2e6+500);

ltafdb_Sig24 = signal(:,2);
ltafdb_Sig24 = ltafdb_Sig24(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/104');
% plot(signal(:,1));
ltafdb_Sig25 = signal(:,1);
ltafdb_Sig25 = ltafdb_Sig25(2e6:2e6+500);

ltafdb_Sig26 = signal(:,2);
ltafdb_Sig26 = ltafdb_Sig26(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/105');
% plot(signal(:,1));
ltafdb_Sig27 = signal(:,1);
ltafdb_Sig27 = ltafdb_Sig27(2e6:2e6+500);

ltafdb_Sig28 = signal(:,2);
ltafdb_Sig28 = ltafdb_Sig28(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/11');
% plot(signal(:,1));
ltafdb_Sig29 = signal(:,1);
ltafdb_Sig29 = ltafdb_Sig29(2e6:2e6+500);

ltafdb_Sig30 = signal(:,2);
ltafdb_Sig30 = ltafdb_Sig30(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/110');
% plot(signal(:,1));
ltafdb_Sig31 = signal(:,1);
ltafdb_Sig31 = ltafdb_Sig31(2e6:2e6+500);

ltafdb_Sig32 = signal(:,2);
ltafdb_Sig32 = ltafdb_Sig32(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/111');
% plot(signal(:,1));
ltafdb_Sig33 = signal(:,1);
ltafdb_Sig33 = ltafdb_Sig33(2e6:2e6+500);

ltafdb_Sig34 = signal(:,2);
ltafdb_Sig34 = ltafdb_Sig34(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/112');
% plot(signal(:,1));
ltafdb_Sig35 = signal(:,1);
ltafdb_Sig35 = ltafdb_Sig35(2e6:2e6+500);

ltafdb_Sig36 = signal(:,2);
ltafdb_Sig36 = ltafdb_Sig36(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/113');
% plot(signal(:,1));
ltafdb_Sig37 = signal(:,1);
ltafdb_Sig37 = ltafdb_Sig37(2e6:2e6+500);

ltafdb_Sig38 = signal(:,2);
ltafdb_Sig38 = ltafdb_Sig38(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/114');
% plot(signal(:,1));
ltafdb_Sig39 = signal(:,1);
ltafdb_Sig39 = ltafdb_Sig39(2e6:2e6+500);

ltafdb_Sig40 = signal(:,2);
ltafdb_Sig40 = ltafdb_Sig40(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/115');
% plot(signal(:,1));
ltafdb_Sig41 = signal(:,1);
ltafdb_Sig41 = ltafdb_Sig41(2e6:2e6+500);

ltafdb_Sig42 = signal(:,2);
ltafdb_Sig42 = ltafdb_Sig42(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/116');
% plot(signal(:,1));
ltafdb_Sig43 = signal(:,1);
ltafdb_Sig43 = ltafdb_Sig43(2e6:2e6+500);

ltafdb_Sig44 = signal(:,2);
ltafdb_Sig44 = ltafdb_Sig44(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/117');
% plot(signal(:,1));
ltafdb_Sig45 = signal(:,1);
ltafdb_Sig45 = ltafdb_Sig45(2e6:2e6+500);

ltafdb_Sig46 = signal(:,2);
ltafdb_Sig46 = ltafdb_Sig46(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/118');
% plot(signal(:,1));
ltafdb_Sig47 = signal(:,1);
ltafdb_Sig47 = ltafdb_Sig47(2e6:2e6+500);

ltafdb_Sig48 = signal(:,2);
ltafdb_Sig48 = ltafdb_Sig48(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/119');
% plot(signal(:,1));
ltafdb_Sig49 = signal(:,1);
ltafdb_Sig49 = ltafdb_Sig49(2e6:2e6+500);

ltafdb_Sig50 = signal(:,2);
ltafdb_Sig50 = ltafdb_Sig50(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/12');
% plot(signal(:,1));
ltafdb_Sig51 = signal(:,1);
ltafdb_Sig51 = ltafdb_Sig51(2e6:2e6+500);

ltafdb_Sig52 = signal(:,2);
ltafdb_Sig52 = ltafdb_Sig52(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/120');
% plot(signal(:,1));
ltafdb_Sig53 = signal(:,1);
ltafdb_Sig53 = ltafdb_Sig53(2e6:2e6+500);

ltafdb_Sig54 = signal(:,2);
ltafdb_Sig54 = ltafdb_Sig54(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/121');
% plot(signal(:,1));
ltafdb_Sig55 = signal(:,1);
ltafdb_Sig55 = ltafdb_Sig55(2e6:2e6+500);

ltafdb_Sig56 = signal(:,2);
ltafdb_Sig56 = ltafdb_Sig56(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/122');
% plot(signal(:,1));
ltafdb_Sig57 = signal(:,1);
ltafdb_Sig57 = ltafdb_Sig57(2e6:2e6+500);

ltafdb_Sig58 = signal(:,2);
ltafdb_Sig58 = ltafdb_Sig58(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/13');
% plot(signal(:,1));
ltafdb_Sig59 = signal(:,1);
ltafdb_Sig59 = ltafdb_Sig59(2e6:2e6+500);

ltafdb_Sig60 = signal(:,2);
ltafdb_Sig60 = ltafdb_Sig60(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/15');
% plot(signal(:,1));
ltafdb_Sig61 = signal(:,1);
ltafdb_Sig61 = ltafdb_Sig61(2e6:2e6+500);

ltafdb_Sig62 = signal(:,2);
ltafdb_Sig62 = ltafdb_Sig62(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/16');
% plot(signal(:,1));
ltafdb_Sig63 = signal(:,1);
ltafdb_Sig63 = ltafdb_Sig63(2e6:2e6+500);

ltafdb_Sig64 = signal(:,2);
ltafdb_Sig64 = ltafdb_Sig64(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/17');
% plot(signal(:,1));
ltafdb_Sig65 = signal(:,1);
ltafdb_Sig65 = ltafdb_Sig65(2e6:2e6+500);

ltafdb_Sig66 = signal(:,2);
ltafdb_Sig66 = ltafdb_Sig66(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/18');
% plot(signal(:,1));
ltafdb_Sig67 = signal(:,1);
ltafdb_Sig67 = ltafdb_Sig67(2e6:2e6+500);

ltafdb_Sig68 = signal(:,2);
ltafdb_Sig68 = ltafdb_Sig68(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/19');
% plot(signal(:,1));
ltafdb_Sig69 = signal(:,1);
ltafdb_Sig69 = ltafdb_Sig69(2e6:2e6+500);

ltafdb_Sig70 = signal(:,2);
ltafdb_Sig70 = ltafdb_Sig70(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/20');
% plot(signal(:,1));
ltafdb_Sig71 = signal(:,1);
ltafdb_Sig71 = ltafdb_Sig71(2e6:2e6+500);

ltafdb_Sig72 = signal(:,2);
ltafdb_Sig72 = ltafdb_Sig72(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/200');
% plot(signal(:,1));
ltafdb_Sig73 = signal(:,1);
ltafdb_Sig73 = ltafdb_Sig73(2e6:2e6+500);

ltafdb_Sig74 = signal(:,2);
ltafdb_Sig74 = ltafdb_Sig74(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/201');
% plot(signal(:,1));
ltafdb_Sig75 = signal(:,1);
ltafdb_Sig75 = ltafdb_Sig75(2e6:2e6+500);

ltafdb_Sig76 = signal(:,2);
ltafdb_Sig76 = ltafdb_Sig76(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/202');
% plot(signal(:,1));
ltafdb_Sig77 = signal(:,1);
ltafdb_Sig77 = ltafdb_Sig77(2e6:2e6+500);

ltafdb_Sig78 = signal(:,2);
ltafdb_Sig78 = ltafdb_Sig78(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/203');
% plot(signal(:,1));
ltafdb_Sig79 = signal(:,1);
ltafdb_Sig79 = ltafdb_Sig79(2e6:2e6+500);

ltafdb_Sig80 = signal(:,2);
ltafdb_Sig80 = ltafdb_Sig80(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/204');
% plot(signal(:,1));
ltafdb_Sig81 = signal(:,1);
ltafdb_Sig81 = ltafdb_Sig81(2e6:2e6+500);

ltafdb_Sig82 = signal(:,2);
ltafdb_Sig82 = ltafdb_Sig82(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/205');
% plot(signal(:,1));
ltafdb_Sig83 = signal(:,1);
ltafdb_Sig83 = ltafdb_Sig83(2e6:2e6+500);

ltafdb_Sig84 = signal(:,2);
ltafdb_Sig84 = ltafdb_Sig84(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/206');
% plot(signal(:,1));
ltafdb_Sig85 = signal(:,1);
ltafdb_Sig85 = ltafdb_Sig85(2e6:2e6+500);

ltafdb_Sig86 = signal(:,2);
ltafdb_Sig86 = ltafdb_Sig86(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/207');
% plot(signal(:,1));
ltafdb_Sig87 = signal(:,1);
ltafdb_Sig87 = ltafdb_Sig87(2e6:2e6+500);

ltafdb_Sig88 = signal(:,2);
ltafdb_Sig88 = ltafdb_Sig88(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/208');
% plot(signal(:,1));
ltafdb_Sig89 = signal(:,1);
ltafdb_Sig89 = ltafdb_Sig89(2e6:2e6+500);

ltafdb_Sig90 = signal(:,2);
ltafdb_Sig90 = ltafdb_Sig90(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/21');
% plot(signal(:,1));
ltafdb_Sig91 = signal(:,1);
ltafdb_Sig91 = ltafdb_Sig91(2e6:2e6+500);

ltafdb_Sig92 = signal(:,2);
ltafdb_Sig92 = ltafdb_Sig92(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/22');
% plot(signal(:,1));
ltafdb_Sig93 = signal(:,1);
ltafdb_Sig93 = ltafdb_Sig93(2e6:2e6+500);

ltafdb_Sig94 = signal(:,2);
ltafdb_Sig94 = ltafdb_Sig94(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/23');
% plot(signal(:,1));
ltafdb_Sig95 = signal(:,1);
ltafdb_Sig95 = ltafdb_Sig95(2e6:2e6+500);

ltafdb_Sig96 = signal(:,2);
ltafdb_Sig96 = ltafdb_Sig96(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/24');
% plot(signal(:,1));
ltafdb_Sig97 = signal(:,1);
ltafdb_Sig97 = ltafdb_Sig97(2e6:2e6+500);

ltafdb_Sig98 = signal(:,2);
ltafdb_Sig98 = ltafdb_Sig98(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/25');
% plot(signal(:,1));
ltafdb_Sig99 = signal(:,1);
ltafdb_Sig99 = ltafdb_Sig99(2e6:2e6+500);

ltafdb_Sig100 = signal(:,2);
ltafdb_Sig100 = ltafdb_Sig100(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/26');
% plot(signal(:,1));
ltafdb_Sig101 = signal(:,1);
ltafdb_Sig101 = ltafdb_Sig101(2e6:2e6+500);

ltafdb_Sig102 = signal(:,2);
ltafdb_Sig102 = ltafdb_Sig102(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/28');
% plot(signal(:,1));
ltafdb_Sig103 = signal(:,1);
ltafdb_Sig103 = ltafdb_Sig103(2e6:2e6+500);

ltafdb_Sig104 = signal(:,2);
ltafdb_Sig104 = ltafdb_Sig104(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/30');
% plot(signal(:,1));
ltafdb_Sig105 = signal(:,1);
ltafdb_Sig105 = ltafdb_Sig105(2e6:2e6+500);

ltafdb_Sig106 = signal(:,2);
ltafdb_Sig106 = ltafdb_Sig106(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/32');
% plot(signal(:,1));
ltafdb_Sig107 = signal(:,1);
ltafdb_Sig107 = ltafdb_Sig107(2e6:2e6+500);

ltafdb_Sig108 = signal(:,2);
ltafdb_Sig108 = ltafdb_Sig108(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/33');
% plot(signal(:,1));
ltafdb_Sig109 = signal(:,1);
ltafdb_Sig109 = ltafdb_Sig109(2e6:2e6+500);

ltafdb_Sig110 = signal(:,2);
ltafdb_Sig110 = ltafdb_Sig110(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/34');
% plot(signal(:,1));
ltafdb_Sig111 = signal(:,1);
ltafdb_Sig111 = ltafdb_Sig111(2e6:2e6+500);

ltafdb_Sig112 = signal(:,2);
ltafdb_Sig112 = ltafdb_Sig112(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/35');
% plot(signal(:,1));
ltafdb_Sig113 = signal(:,1);
ltafdb_Sig113 = ltafdb_Sig113(2e6:2e6+500);

ltafdb_Sig114 = signal(:,2);
ltafdb_Sig114 = ltafdb_Sig114(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/37');
% plot(signal(:,1));
ltafdb_Sig115 = signal(:,1);
ltafdb_Sig115 = ltafdb_Sig115(2e6:2e6+500);

ltafdb_Sig116 = signal(:,2);
ltafdb_Sig116 = ltafdb_Sig116(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/38');
% plot(signal(:,1));
ltafdb_Sig117 = signal(:,1);
ltafdb_Sig117 = ltafdb_Sig117(2e6:2e6+500);

ltafdb_Sig118 = signal(:,2);
ltafdb_Sig118 = ltafdb_Sig118(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/39');
% plot(signal(:,1));
ltafdb_Sig119 = signal(:,1);
ltafdb_Sig119 = ltafdb_Sig119(2e6:2e6+500);

ltafdb_Sig120 = signal(:,2);
ltafdb_Sig120 = ltafdb_Sig120(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/42');
% plot(signal(:,1));
ltafdb_Sig121 = signal(:,1);
ltafdb_Sig121 = ltafdb_Sig121(2e6:2e6+500);

ltafdb_Sig122 = signal(:,2);
ltafdb_Sig122 = ltafdb_Sig122(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/43');
% plot(signal(:,1));
ltafdb_Sig123 = signal(:,1);
ltafdb_Sig123 = ltafdb_Sig123(2e6:2e6+500);

ltafdb_Sig124 = signal(:,2);
ltafdb_Sig124 = ltafdb_Sig124(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/44');
% plot(signal(:,1));
ltafdb_Sig125 = signal(:,1);
ltafdb_Sig125 = ltafdb_Sig125(2e6:2e6+500);

ltafdb_Sig126 = signal(:,2);
ltafdb_Sig126 = ltafdb_Sig126(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/45');
% plot(signal(:,1));
ltafdb_Sig127 = signal(:,1);
ltafdb_Sig127 = ltafdb_Sig127(2e6:2e6+500);

ltafdb_Sig128 = signal(:,2);
ltafdb_Sig128 = ltafdb_Sig128(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/47');
% plot(signal(:,1));
ltafdb_Sig129 = signal(:,1);
ltafdb_Sig129 = ltafdb_Sig129(2e6:2e6+500);

ltafdb_Sig130 = signal(:,2);
ltafdb_Sig130 = ltafdb_Sig130(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/48');
% plot(signal(:,1));
ltafdb_Sig131 = signal(:,1);
ltafdb_Sig131 = ltafdb_Sig131(2e6:2e6+500);

ltafdb_Sig132 = signal(:,2);
ltafdb_Sig132 = ltafdb_Sig132(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/49');
% plot(signal(:,1));
ltafdb_Sig133 = signal(:,1);
ltafdb_Sig133 = ltafdb_Sig133(2e6:2e6+500);

ltafdb_Sig134 = signal(:,2);
ltafdb_Sig134 = ltafdb_Sig134(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/51');
% plot(signal(:,1));
ltafdb_Sig135 = signal(:,1);
ltafdb_Sig135 = ltafdb_Sig135(2e6:2e6+500);

ltafdb_Sig136 = signal(:,2);
ltafdb_Sig136 = ltafdb_Sig136(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/53');
% plot(signal(:,1));
ltafdb_Sig137 = signal(:,1);
ltafdb_Sig137 = ltafdb_Sig137(2e6:2e6+500);

ltafdb_Sig136 = signal(:,2);
ltafdb_Sig136 = ltafdb_Sig136(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/54');
% plot(signal(:,1));
ltafdb_Sig138 = signal(:,1);
ltafdb_Sig138 = ltafdb_Sig138(2e6:2e6+500);

ltafdb_Sig139 = signal(:,2);
ltafdb_Sig139 = ltafdb_Sig139(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/55');
% plot(signal(:,1));
ltafdb_Sig140 = signal(:,1);
ltafdb_Sig140 = ltafdb_Sig140(2e6:2e6+500);

ltafdb_Sig141 = signal(:,2);
ltafdb_Sig141 = ltafdb_Sig141(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/56');
% plot(signal(:,1));
ltafdb_Sig142 = signal(:,1);
ltafdb_Sig142 = ltafdb_Sig142(2e6:2e6+500);

ltafdb_Sig143 = signal(:,2);
ltafdb_Sig143 = ltafdb_Sig143(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/58');
% plot(signal(:,1));
ltafdb_Sig144 = signal(:,1);
ltafdb_Sig144 = ltafdb_Sig144(2e6:2e6+500);

ltafdb_Sig145 = signal(:,2);
ltafdb_Sig145 = ltafdb_Sig145(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/60');
% plot(signal(:,1));
ltafdb_Sig146 = signal(:,1);
ltafdb_Sig146 = ltafdb_Sig146(2e6:2e6+500);

ltafdb_Sig147 = signal(:,2);
ltafdb_Sig147 = ltafdb_Sig147(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/62');
% plot(signal(:,1));
ltafdb_Sig148 = signal(:,1);
ltafdb_Sig148 = ltafdb_Sig148(2e6:2e6+500);

ltafdb_Sig149 = signal(:,2);
ltafdb_Sig149 = ltafdb_Sig149(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/64');
% plot(signal(:,1));
ltafdb_Sig150 = signal(:,1);
ltafdb_Sig150 = ltafdb_Sig150(2e6:2e6+500);

ltafdb_Sig151 = signal(:,2);
ltafdb_Sig151 = ltafdb_Sig151(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/65');
% plot(signal(:,1));
ltafdb_Sig152 = signal(:,1);
ltafdb_Sig152 = ltafdb_Sig152(2e6:2e6+500);

ltafdb_Sig153 = signal(:,2);
ltafdb_Sig153 = ltafdb_Sig153(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/68');
% plot(signal(:,1));
ltafdb_Sig154 = signal(:,1);
ltafdb_Sig154 = ltafdb_Sig154(2e6:2e6+500);

ltafdb_Sig155 = signal(:,2);
ltafdb_Sig155 = ltafdb_Sig155(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/69');
% plot(signal(:,1));
ltafdb_Sig156 = signal(:,1);
ltafdb_Sig156 = ltafdb_Sig156(2e6:2e6+500);

ltafdb_Sig157 = signal(:,2);
ltafdb_Sig157 = ltafdb_Sig157(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/70');
% plot(signal(:,1));
ltafdb_Sig158 = signal(:,1);
ltafdb_Sig158 = ltafdb_Sig158(2e6:2e6+500);

ltafdb_Sig159 = signal(:,2);
ltafdb_Sig159 = ltafdb_Sig159(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/71');
% plot(signal(:,1));
ltafdb_Sig160 = signal(:,1);
ltafdb_Sig160 = ltafdb_Sig160(2e6:2e6+500);

ltafdb_Sig161 = signal(:,2);
ltafdb_Sig161 = ltafdb_Sig161(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/72');
% plot(signal(:,1));
ltafdb_Sig162 = signal(:,1);
ltafdb_Sig162 = ltafdb_Sig162(2e6:2e6+500);

ltafdb_Sig163 = signal(:,2);
ltafdb_Sig163 = ltafdb_Sig163(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/74');
% plot(signal(:,1));
ltafdb_Sig164 = signal(:,1);
ltafdb_Sig164 = ltafdb_Sig164(2e6:2e6+500);

ltafdb_Sig165 = signal(:,2);
ltafdb_Sig165 = ltafdb_Sig165(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('ltafdb/75');
% plot(signal(:,1));
ltafdb_Sig166 = signal(:,1);
ltafdb_Sig166 = ltafdb_Sig166(2e6:2e6+500);

ltafdb_Sig167 = signal(:,2);
ltafdb_Sig167 = ltafdb_Sig167(2e6:2e6+500);

for ix = 1:167
    if ix <= 9
        fig_id = figure(); plot(eval(['ltafdb_Sig0',num2str(ix)]));
        xlim([0,500]);
        saveas(fig_id,['C:\Users\shaya\Desktop\Images\Temp\','Sig0',num2str(ix),'.png']);
        Img1 = imread(['C:\Users\shaya\Desktop\Images\Temp\','Sig0',num2str(ix),'.png']);
        Img2 = imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]
        imwrite(Img2,[Image_Path,'\ltafdb\','Sig0',num2str(ix),'.png']);
        fig_id = figure(); spectrogram(eval(['ltafdb_Sig0',num2str(ix)]));
        saveas(fig_id,[Image_Path,'\ltafdb\','Spec0',num2str(ix),'.png']);
    else
        fig_id = figure(); plot(eval(['ltafdb_Sig',num2str(ix)]));
        xlim([0,500]);
        saveas(fig_id,['C:\Users\shaya\Desktop\Images\Temp\','Sig',num2str(ix),'.png']);
        Img1 = imread(['C:\Users\shaya\Desktop\Images\Temp\','Sig',num2str(ix),'.png']);
        Img2 = imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]      
        saveas(Img2,[Image_Path,'\ltafdb\','Sig',num2str(ix),'.png']);
        fig_id = figure(); spectrogram(eval(['ltafdb_Sig',num2str(ix)]));
        saveas(fig_id,[Image_Path,'\ltafdb\','Spec',num2str(ix),'.png']);
    end
end

close all; clc; fclose('all');

%% ---------- VF: MIT-BIH Malignant Ventricular Arrhythmia Database (vfdb) ----------
[signal,Fs,tm]=rdsamp('vfdb/418');
% plot(signal(:,1));
vfdb_Sig01 = signal(:,1);
vfdb_Sig01 = vfdb_Sig01(3e5:3e5+500);

% plot(signal(:,2));
vfdb_Sig02 = signal(:,1);
vfdb_Sig02 = vfdb_Sig02(3e5:3e5+500);

[signal,Fs,tm]=rdsamp('vfdb/419');
% plot(signal(:,1));
vfdb_Sig03 = signal(:,1);
vfdb_Sig03 = vfdb_Sig03(3e5:3e5+500);

% plot(signal(:,2));
vfdb_Sig04 = signal(:,1);
vfdb_Sig04 = vfdb_Sig04(3e5:3e5+500);

[signal,Fs,tm]=rdsamp('vfdb/420');
% plot(signal(:,1));
vfdb_Sig05 = signal(:,1);
vfdb_Sig05 = vfdb_Sig05(3e5:3e5+500);

% plot(signal(:,2));
vfdb_Sig06 = signal(:,1);
vfdb_Sig06 = vfdb_Sig06(3e5:3e5+500);

[signal,Fs,tm]=rdsamp('vfdb/421');
% plot(signal(:,1));
vfdb_Sig07 = signal(:,1);
vfdb_Sig07 = vfdb_Sig07(3e5:3e5+500);

% plot(signal(:,2));
vfdb_Sig08 = signal(:,1);
vfdb_Sig08 = vfdb_Sig08(3e5:3e5+500);

[signal,Fs,tm]=rdsamp('vfdb/422');
% plot(signal(:,1));
vfdb_Sig09 = signal(:,1);
vfdb_Sig09 = vfdb_Sig09(3e5:3e5+500);

% plot(signal(:,2));
vfdb_Sig10 = signal(:,1);
vfdb_Sig10 = vfdb_Sig10(3e5:3e5+500);

[signal,Fs,tm]=rdsamp('vfdb/423');
% plot(signal(:,1));
vfdb_Sig11 = signal(:,1);
vfdb_Sig11 = vfdb_Sig11(3e5:3e5+500);

% plot(signal(:,2));
vfdb_Sig12 = signal(:,1);
vfdb_Sig12 = vfdb_Sig12(3e5:3e5+500);

[signal,Fs,tm]=rdsamp('vfdb/424');
% plot(signal(:,1));
vfdb_Sig13 = signal(:,1);
vfdb_Sig13 = vfdb_Sig13(3e5:3e5+500);

% plot(signal(:,2));
vfdb_Sig14 = signal(:,1);
vfdb_Sig14 = vfdb_Sig14(3e5:3e5+500);

[signal,Fs,tm]=rdsamp('vfdb/425');
% plot(signal(:,1));
vfdb_Sig15 = signal(:,1);
vfdb_Sig15 = vfdb_Sig15(3e5:3e5+500);

% plot(signal(:,2));
vfdb_Sig16 = signal(:,1);
vfdb_Sig16 = vfdb_Sig16(3e5:3e5+500);

[signal,Fs,tm]=rdsamp('vfdb/426');
% plot(signal(:,1));
vfdb_Sig17 = signal(:,1);
vfdb_Sig17 = vfdb_Sig17(3e5:3e5+500);

% plot(signal(:,2));
vfdb_Sig18 = signal(:,1);
vfdb_Sig18 = vfdb_Sig18(3e5:3e5+500);

[signal,Fs,tm]=rdsamp('vfdb/427');
% plot(signal(:,1));
vfdb_Sig19 = signal(:,1);
vfdb_Sig19 = vfdb_Sig19(3e5:3e5+500);

% plot(signal(:,2));
vfdb_Sig20 = signal(:,1);
vfdb_Sig20 = vfdb_Sig20(3e5:3e5+500);

[signal,Fs,tm]=rdsamp('vfdb/428');
% plot(signal(:,1));
vfdb_Sig21 = signal(:,1);
vfdb_Sig21 = vfdb_Sig21(3e5:3e5+500);

% plot(signal(:,2));
vfdb_Sig22 = signal(:,1);
vfdb_Sig22 = vfdb_Sig22(3e5:3e5+500);

[signal,Fs,tm]=rdsamp('vfdb/429');
% plot(signal(:,1));
vfdb_Sig23 = signal(:,1);
vfdb_Sig23 = vfdb_Sig23(3e5:3e5+500);

% plot(signal(:,2));
vfdb_Sig24 = signal(:,1);
vfdb_Sig24 = vfdb_Sig24(3e5:3e5+500);

[signal,Fs,tm]=rdsamp('vfdb/430');
% plot(signal(:,1));
vfdb_Sig25 = signal(:,1);
vfdb_Sig25 = vfdb_Sig25(3e5:3e5+500);

% plot(signal(:,2));
vfdb_Sig26 = signal(:,1);
vfdb_Sig26 = vfdb_Sig26(3e5:3e5+500);

[signal,Fs,tm]=rdsamp('vfdb/602');
% plot(signal(:,1));
vfdb_Sig27 = signal(:,1);
vfdb_Sig27 = vfdb_Sig27(3e5:3e5+500);

% plot(signal(:,2));
vfdb_Sig28 = signal(:,1);
vfdb_Sig28 = vfdb_Sig28(3e5:3e5+500);

[signal,Fs,tm]=rdsamp('vfdb/605');
% plot(signal(:,1));
vfdb_Sig29 = signal(:,1);
vfdb_Sig29 = vfdb_Sig29(3e5:3e5+500);

% plot(signal(:,2));
vfdb_Sig30 = signal(:,1);
vfdb_Sig30 = vfdb_Sig30(3e5:3e5+500);

[signal,Fs,tm]=rdsamp('vfdb/607');
% plot(signal(:,1));
vfdb_Sig31 = signal(:,1);
vfdb_Sig31 = vfdb_Sig31(3e5:3e5+500);

% plot(signal(:,2));
vfdb_Sig32 = signal(:,1);
vfdb_Sig32 = vfdb_Sig32(3e5:3e5+500);

[signal,Fs,tm]=rdsamp('vfdb/609');
% plot(signal(:,1));
vfdb_Sig33 = signal(:,1);
vfdb_Sig33 = vfdb_Sig33(3e5:3e5+500);

% plot(signal(:,2));
vfdb_Sig34 = signal(:,1);
vfdb_Sig34 = vfdb_Sig34(3e5:3e5+500);

[signal,Fs,tm]=rdsamp('vfdb/610');
% plot(signal(:,1));
vfdb_Sig35 = signal(:,1);
vfdb_Sig35 = vfdb_Sig35(3e5:3e5+500);

% plot(signal(:,2));
vfdb_Sig36 = signal(:,1);
vfdb_Sig36 = vfdb_Sig36(3e5:3e5+500);

[signal,Fs,tm]=rdsamp('vfdb/611');
% plot(signal(:,1));
vfdb_Sig37 = signal(:,1);
vfdb_Sig37 = vfdb_Sig37(3e5:3e5+500);

% plot(signal(:,2));
vfdb_Sig38 = signal(:,1);
vfdb_Sig38 = vfdb_Sig38(3e5:3e5+500);

[signal,Fs,tm]=rdsamp('vfdb/612');
% plot(signal(:,1));
vfdb_Sig39 = signal(:,1);
vfdb_Sig39 = vfdb_Sig39(3e5:3e5+500);

% plot(signal(:,2));
vfdb_Sig40 = signal(:,1);
vfdb_Sig40 = vfdb_Sig40(3e5:3e5+500);

[signal,Fs,tm]=rdsamp('vfdb/614');
% plot(signal(:,1));
vfdb_Sig41 = signal(:,1);
vfdb_Sig41 = vfdb_Sig41(3e5:3e5+500);

% plot(signal(:,2));
vfdb_Sig42 = signal(:,1);
vfdb_Sig42 = vfdb_Sig42(3e5:3e5+500);

[signal,Fs,tm]=rdsamp('vfdb/615');
% plot(signal(:,1));
vfdb_Sig43 = signal(:,1);
vfdb_Sig43 = vfdb_Sig43(3e5:3e5+500);

% plot(signal(:,2));
vfdb_Sig44 = signal(:,1);
vfdb_Sig44 = vfdb_Sig44(3e5:3e5+500);

for ix = 1:44
    if ix <= 9
        fig_id = figure(); plot(eval(['vfdb_Sig0',num2str(ix)]));
        xlim([0,500]);
        saveas(fig_id,['C:\Users\shaya\Desktop\Images\Temp\','Sig0',num2str(ix),'.png']);
        Img1 = imread(['C:\Users\shaya\Desktop\Images\Temp\','Sig0',num2str(ix),'.png']);
        Img2 = imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]
        imwrite(Img2,[Image_Path,'\vfdb\','Sig0',num2str(ix),'.png']);
        fig_id = figure(); spectrogram(eval(['vfdb_Sig0',num2str(ix)]));
        saveas(fig_id,[Image_Path,'\vfdb\','Spec0',num2str(ix),'.png']);
    else
        fig_id = figure(); plot(eval(['vfdb_Sig',num2str(ix)]));
        xlim([0,500]);
        saveas(fig_id,['C:\Users\shaya\Desktop\Images\Temp\','Sig',num2str(ix),'.png']);
        Img1 = imread(['C:\Users\shaya\Desktop\Images\Temp\','Sig',num2str(ix),'.png']);
        Img2 = imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]        
        saveas(Img2,[Image_Path,'\vfdb\','Sig',num2str(ix),'.png']);
        fig_id = figure(); spectrogram(eval(['vfdb_Sig',num2str(ix)]));
        saveas(fig_id,[Image_Path,'\vfdb\','Spec',num2str(ix),'.png']);
    end
end

close all; clc; fclose('all');

%% ---------- VF: MIT-BIH Supraventricular Arrhythmia Database (svdb) ----------

[signal,Fs,tm]=rdsamp('svdb/800');
% plot(signal(:,1));
svdb_Sig01 = signal(:,1);
svdb_Sig01 = svdb_Sig01(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig02 = signal(:,2);
svdb_Sig02 = svdb_Sig02(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/801');
% plot(signal(:,1));
svdb_Sig03 = signal(:,1);
svdb_Sig03 = svdb_Sig03(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig04 = signal(:,2);
svdb_Sig04 = svdb_Sig04(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/802');
% plot(signal(:,1));
svdb_Sig05 = signal(:,1);
svdb_Sig05 = svdb_Sig05(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig06 = signal(:,2);
svdb_Sig06 = svdb_Sig06(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/803');
% plot(signal(:,1));
svdb_Sig07 = signal(:,1);
svdb_Sig07 = svdb_Sig07(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig08 = signal(:,2);
svdb_Sig08 = svdb_Sig08(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/804');
% plot(signal(:,1));
svdb_Sig09 = signal(:,1);
svdb_Sig09 = svdb_Sig09(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig10 = signal(:,2);
svdb_Sig10 = svdb_Sig10(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/805');
% plot(signal(:,1));
svdb_Sig11 = signal(:,1);
svdb_Sig11 = svdb_Sig11(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig12 = signal(:,2);
svdb_Sig12 = svdb_Sig12(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/806');
% plot(signal(:,1));
svdb_Sig13 = signal(:,1);
svdb_Sig13 = svdb_Sig13(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig14 = signal(:,2);
svdb_Sig14 = svdb_Sig14(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/807');
% plot(signal(:,1));
svdb_Sig15 = signal(:,1);
svdb_Sig15 = svdb_Sig15(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig16 = signal(:,2);
svdb_Sig16 = svdb_Sig16(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/808');
% plot(signal(:,1));
svdb_Sig17 = signal(:,1);
svdb_Sig17 = svdb_Sig17(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig18 = signal(:,2);
svdb_Sig18 = svdb_Sig18(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/809');
% plot(signal(:,1));
svdb_Sig19 = signal(:,1);
svdb_Sig19 = svdb_Sig19(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig20 = signal(:,2);
svdb_Sig20 = svdb_Sig20(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/810');
% plot(signal(:,1));
svdb_Sig21 = signal(:,1);
svdb_Sig21 = svdb_Sig21(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig22 = signal(:,2);
svdb_Sig22 = svdb_Sig22(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/811');
% plot(signal(:,1));
svdb_Sig23 = signal(:,1);
svdb_Sig23 = svdb_Sig23(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig24 = signal(:,2);
svdb_Sig24 = svdb_Sig24(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/812');
% plot(signal(:,1));
svdb_Sig25 = signal(:,1);
svdb_Sig25 = svdb_Sig25(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig26 = signal(:,2);
svdb_Sig26 = svdb_Sig26(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/820');
% plot(signal(:,1));
svdb_Sig27 = signal(:,1);
svdb_Sig27 = svdb_Sig27(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig28 = signal(:,2);
svdb_Sig28 = svdb_Sig28(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/821');
% plot(signal(:,1));
svdb_Sig29 = signal(:,1);
svdb_Sig29 = svdb_Sig29(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig30 = signal(:,2);
svdb_Sig30 = svdb_Sig30(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/822');
% plot(signal(:,1));
svdb_Sig31 = signal(:,1);
svdb_Sig31 = svdb_Sig31(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig32 = signal(:,2);
svdb_Sig32 = svdb_Sig32(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/823');
% plot(signal(:,1));
svdb_Sig33 = signal(:,1);
svdb_Sig33 = svdb_Sig33(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig34 = signal(:,2);
svdb_Sig34 = svdb_Sig34(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/824');
% plot(signal(:,1));
svdb_Sig35 = signal(:,1);
svdb_Sig35 = svdb_Sig35(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig36 = signal(:,2);
svdb_Sig36 = svdb_Sig36(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/825');
% plot(signal(:,1));
svdb_Sig37 = signal(:,1);
svdb_Sig37 = svdb_Sig37(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig38 = signal(:,2);
svdb_Sig38 = svdb_Sig38(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/826');
% plot(signal(:,1));
svdb_Sig39 = signal(:,1);
svdb_Sig39 = svdb_Sig39(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig40 = signal(:,2);
svdb_Sig40 = svdb_Sig40(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/827');
% plot(signal(:,1));
svdb_Sig41 = signal(:,1);
svdb_Sig41 = svdb_Sig41(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig42 = signal(:,2);
svdb_Sig42 = svdb_Sig42(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/828');
% plot(signal(:,1));
svdb_Sig43 = signal(:,1);
svdb_Sig43 = svdb_Sig43(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig44 = signal(:,2);
svdb_Sig44 = svdb_Sig44(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/829');
% plot(signal(:,1));
svdb_Sig45 = signal(:,1);
svdb_Sig45 = svdb_Sig45(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig46 = signal(:,2);
svdb_Sig46 = svdb_Sig46(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/840');
% plot(signal(:,1));
svdb_Sig47 = signal(:,1);
svdb_Sig47 = svdb_Sig47(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig48 = signal(:,2);
svdb_Sig48 = svdb_Sig48(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/841');
% plot(signal(:,1));
svdb_Sig49 = signal(:,1);
svdb_Sig49 = svdb_Sig49(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig50 = signal(:,2);
svdb_Sig50 = svdb_Sig50(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/842');
% plot(signal(:,1));
svdb_Sig51 = signal(:,1);
svdb_Sig51 = svdb_Sig51(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig52 = signal(:,2);
svdb_Sig52 = svdb_Sig52(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/843');
% plot(signal(:,1));
svdb_Sig53 = signal(:,1);
svdb_Sig53 = svdb_Sig53(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig54 = signal(:,2);
svdb_Sig54 = svdb_Sig54(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/844');
% plot(signal(:,1));
svdb_Sig55 = signal(:,1);
svdb_Sig55 = svdb_Sig55(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig56 = signal(:,2);
svdb_Sig56 = svdb_Sig56(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/845');
% plot(signal(:,1));
svdb_Sig57 = signal(:,1);
svdb_Sig57 = svdb_Sig57(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig58 = signal(:,2);
svdb_Sig58 = svdb_Sig58(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/846');
% plot(signal(:,1));
svdb_Sig59 = signal(:,1);
svdb_Sig59 = svdb_Sig59(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig60 = signal(:,2);
svdb_Sig60 = svdb_Sig60(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/847');
% plot(signal(:,1));
svdb_Sig61 = signal(:,1);
svdb_Sig61 = svdb_Sig61(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig62 = signal(:,2);
svdb_Sig62 = svdb_Sig62(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/848');
% plot(signal(:,1));
svdb_Sig63 = signal(:,1);
svdb_Sig63 = svdb_Sig63(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig64 = signal(:,2);
svdb_Sig64 = svdb_Sig64(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/849');
% plot(signal(:,1));
svdb_Sig65 = signal(:,1);
svdb_Sig65 = svdb_Sig65(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig66 = signal(:,2);
svdb_Sig66 = svdb_Sig66(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/850');
% plot(signal(:,1));
svdb_Sig67 = signal(:,1);
svdb_Sig67 = svdb_Sig67(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig68 = signal(:,2);
svdb_Sig68 = svdb_Sig68(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/851');
% plot(signal(:,1));
svdb_Sig69 = signal(:,1);
svdb_Sig69 = svdb_Sig69(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig70 = signal(:,2);
svdb_Sig70 = svdb_Sig70(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/852');
% plot(signal(:,1));
svdb_Sig71 = signal(:,1);
svdb_Sig71 = svdb_Sig71(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig72 = signal(:,2);
svdb_Sig72 = svdb_Sig72(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/853');
% plot(signal(:,1));
svdb_Sig73 = signal(:,1);
svdb_Sig73 = svdb_Sig73(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig74 = signal(:,2);
svdb_Sig74 = svdb_Sig74(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/854');
% plot(signal(:,1));
svdb_Sig75 = signal(:,1);
svdb_Sig75 = svdb_Sig75(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig76 = signal(:,2);
svdb_Sig76 = svdb_Sig76(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/855');
% plot(signal(:,1));
svdb_Sig77 = signal(:,1);
svdb_Sig77 = svdb_Sig77(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig78 = signal(:,2);
svdb_Sig78 = svdb_Sig78(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/856');
% plot(signal(:,1));
svdb_Sig79 = signal(:,1);
svdb_Sig79 = svdb_Sig79(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig80 = signal(:,2);
svdb_Sig80 = svdb_Sig80(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/857');
% plot(signal(:,1));
svdb_Sig81 = signal(:,1);
svdb_Sig81 = svdb_Sig81(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig82 = signal(:,2);
svdb_Sig82 = svdb_Sig82(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/858');
% plot(signal(:,1));
svdb_Sig83 = signal(:,1);
svdb_Sig83 = svdb_Sig83(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig84 = signal(:,2);
svdb_Sig84 = svdb_Sig84(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/859');
% plot(signal(:,1));
svdb_Sig85 = signal(:,1);
svdb_Sig85 = svdb_Sig85(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig86 = signal(:,2);
svdb_Sig86 = svdb_Sig86(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/860');
% plot(signal(:,1));
svdb_Sig87 = signal(:,1);
svdb_Sig87 = svdb_Sig87(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig88 = signal(:,2);
svdb_Sig88 = svdb_Sig88(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/861');
% plot(signal(:,1));
svdb_Sig89 = signal(:,1);
svdb_Sig89 = svdb_Sig89(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig90 = signal(:,2);
svdb_Sig90 = svdb_Sig90(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/862');
% plot(signal(:,1));
svdb_Sig91 = signal(:,1);
svdb_Sig91 = svdb_Sig91(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig92 = signal(:,2);
svdb_Sig92 = svdb_Sig92(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/863');
% plot(signal(:,1));
svdb_Sig93 = signal(:,1);
svdb_Sig93 = svdb_Sig93(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig94 = signal(:,2);
svdb_Sig94 = svdb_Sig94(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/864');
% plot(signal(:,1));
svdb_Sig95 = signal(:,1);
svdb_Sig95 = svdb_Sig95(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig96 = signal(:,2);
svdb_Sig96 = svdb_Sig96(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/865');
% plot(signal(:,1));
svdb_Sig97 = signal(:,1);
svdb_Sig97 = svdb_Sig97(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig98 = signal(:,2);
svdb_Sig98 = svdb_Sig98(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/866');
% plot(signal(:,1));
svdb_Sig99 = signal(:,1);
svdb_Sig99 = svdb_Sig99(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig100 = signal(:,2);
svdb_Sig100 = svdb_Sig100(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/867');
% plot(signal(:,1));
svdb_Sig101 = signal(:,1);
svdb_Sig101 = svdb_Sig101(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig102 = signal(:,2);
svdb_Sig102 = svdb_Sig102(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/868');
% plot(signal(:,1));
svdb_Sig103 = signal(:,1);
svdb_Sig103 = svdb_Sig103(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig104 = signal(:,2);
svdb_Sig104 = svdb_Sig104(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/869');
% plot(signal(:,1));
svdb_Sig105 = signal(:,1);
svdb_Sig105 = svdb_Sig105(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig106 = signal(:,2);
svdb_Sig106 = svdb_Sig106(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/870');
% plot(signal(:,1));
svdb_Sig107 = signal(:,1);
svdb_Sig107 = svdb_Sig107(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig108 = signal(:,2);
svdb_Sig108 = svdb_Sig108(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/871');
% plot(signal(:,1));
svdb_Sig109 = signal(:,1);
svdb_Sig109 = svdb_Sig109(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig110 = signal(:,2);
svdb_Sig110 = svdb_Sig110(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/872');
% plot(signal(:,1));
svdb_Sig111 = signal(:,1);
svdb_Sig111 = svdb_Sig111(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig112 = signal(:,2);
svdb_Sig112 = svdb_Sig112(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/873');
% plot(signal(:,1));
svdb_Sig113 = signal(:,1);
svdb_Sig113 = svdb_Sig113(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig114 = signal(:,2);
svdb_Sig114 = svdb_Sig114(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/874');
% plot(signal(:,1));
svdb_Sig115 = signal(:,1);
svdb_Sig115 = svdb_Sig115(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig116 = signal(:,2);
svdb_Sig116 = svdb_Sig116(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/875');
% plot(signal(:,1));
svdb_Sig117 = signal(:,1);
svdb_Sig117 = svdb_Sig117(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig118 = signal(:,2);
svdb_Sig118 = svdb_Sig118(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/876');
% plot(signal(:,1));
svdb_Sig119 = signal(:,1);
svdb_Sig119 = svdb_Sig119(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig120 = signal(:,2);
svdb_Sig120 = svdb_Sig120(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/877');
% plot(signal(:,1));
svdb_Sig121 = signal(:,1);
svdb_Sig121 = svdb_Sig121(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig122 = signal(:,2);
svdb_Sig122 = svdb_Sig122(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/878');
% plot(signal(:,1));
svdb_Sig123 = signal(:,1);
svdb_Sig123 = svdb_Sig123(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig124 = signal(:,2);
svdb_Sig124 = svdb_Sig124(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/879');
% plot(signal(:,1));
svdb_Sig125 = signal(:,1);
svdb_Sig125 = svdb_Sig125(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig126 = signal(:,2);
svdb_Sig126 = svdb_Sig126(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/880');
% plot(signal(:,1));
svdb_Sig127 = signal(:,1);
svdb_Sig127 = svdb_Sig127(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig128 = signal(:,2);
svdb_Sig128 = svdb_Sig128(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/881');
% plot(signal(:,1));
svdb_Sig129 = signal(:,1);
svdb_Sig129 = svdb_Sig129(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig130 = signal(:,2);
svdb_Sig130 = svdb_Sig130(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/882');
% plot(signal(:,1));
svdb_Sig131 = signal(:,1);
svdb_Sig131 = svdb_Sig131(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig132 = signal(:,2);
svdb_Sig132 = svdb_Sig132(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/883');
% plot(signal(:,1));
svdb_Sig133 = signal(:,1);
svdb_Sig133 = svdb_Sig133(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig134 = signal(:,2);
svdb_Sig134 = svdb_Sig134(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/884');
% plot(signal(:,1));
svdb_Sig135 = signal(:,1);
svdb_Sig135 = svdb_Sig135(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig136 = signal(:,2);
svdb_Sig136 = svdb_Sig136(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/885');
% plot(signal(:,1));
svdb_Sig137 = signal(:,1);
svdb_Sig137 = svdb_Sig137(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig138 = signal(:,2);
svdb_Sig138 = svdb_Sig138(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/886');
% plot(signal(:,1));
svdb_Sig139 = signal(:,1);
svdb_Sig139 = svdb_Sig139(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig140 = signal(:,2);
svdb_Sig140 = svdb_Sig140(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/887');
% plot(signal(:,1));
svdb_Sig141 = signal(:,1);
svdb_Sig141 = svdb_Sig141(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig142 = signal(:,2);
svdb_Sig142 = svdb_Sig142(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/888');
% plot(signal(:,1));
svdb_Sig143 = signal(:,1);
svdb_Sig143 = svdb_Sig143(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig144 = signal(:,2);
svdb_Sig144 = svdb_Sig144(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/889');
% plot(signal(:,1));
svdb_Sig145 = signal(:,1);
svdb_Sig145 = svdb_Sig145(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig146 = signal(:,2);
svdb_Sig146 = svdb_Sig146(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/890');
% plot(signal(:,1));
svdb_Sig147 = signal(:,1);
svdb_Sig147 = svdb_Sig147(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig148 = signal(:,2);
svdb_Sig148 = svdb_Sig148(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/891');
% plot(signal(:,1));
svdb_Sig149 = signal(:,1);
svdb_Sig149 = svdb_Sig149(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig150 = signal(:,2);
svdb_Sig150 = svdb_Sig150(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/892');
% plot(signal(:,1));
svdb_Sig151 = signal(:,1);
svdb_Sig151 = svdb_Sig151(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig152 = signal(:,2);
svdb_Sig152 = svdb_Sig152(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/893');
% plot(signal(:,1));
svdb_Sig153 = signal(:,1);
svdb_Sig153 = svdb_Sig153(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig154 = signal(:,2);
svdb_Sig154 = svdb_Sig154(1.5e5:1.5e5+500);

[signal,Fs,tm]=rdsamp('svdb/894');
% plot(signal(:,1));
svdb_Sig155 = signal(:,1);
svdb_Sig155 = svdb_Sig155(1.5e5:1.5e5+500);

% plot(signal(:,2));
svdb_Sig156 = signal(:,2);
svdb_Sig156 = svdb_Sig156(1.5e5:1.5e5+500);

for ix = 1:156
    if ix <= 9
        fig_id = figure(); plot(eval(['svdb_Sig0',num2str(ix)]));
        xlim([0,500]);
        saveas(fig_id,['C:\Users\shaya\Desktop\Images\Temp\','Sig0',num2str(ix),'.png']);
        Img1 = imread(['C:\Users\shaya\Desktop\Images\Temp\','Sig0',num2str(ix),'.png']);
        Img2 = imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]
        imwrite(Img2,[Image_Path,'\svdb\','Sig0',num2str(ix),'.png']);
        fig_id = figure(); spectrogram(eval(['svdb_Sig0',num2str(ix)]));
        saveas(fig_id,[Image_Path,'\svdb\','Spec0',num2str(ix),'.png']);
    else
        fig_id = figure(); plot(eval(['svdb_Sig',num2str(ix)]));
        xlim([0,500]);
        saveas(fig_id,['C:\Users\shaya\Desktop\Images\Temp\','Sig',num2str(ix),'.png']);
        Img1 = imread(['C:\Users\shaya\Desktop\Images\Temp\','Sig',num2str(ix),'.png']);
        Img2 = imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]      
        saveas(Img2,[Image_Path,'\svdb\','Sig',num2str(ix),'.png']);
        fig_id = figure(); spectrogram(eval(['svdb_Sig',num2str(ix)]));
        saveas(fig_id,[Image_Path,'\svdb\','Spec',num2str(ix),'.png']);
    end
end

close all; clc; fclose('all');

%% ---------- General: MIT-BIH Arrhythmia Database (mitdb) ----------
[signal,Fs,tm]=rdsamp('mitdb/100');
% plot(signal(:,1));
mitdb_Sig01 = signal(:,1);
mitdb_Sig01 = mitdb_Sig01(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig02 = signal(:,2);
mitdb_Sig02 = mitdb_Sig02(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/101');
% plot(signal(:,1));
mitdb_Sig03 = signal(:,1);
mitdb_Sig03 = mitdb_Sig03(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig04 = signal(:,2);
mitdb_Sig04 = mitdb_Sig04(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/102');
% plot(signal(:,1));
mitdb_Sig05 = signal(:,1);
mitdb_Sig05 = mitdb_Sig05(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig06 = signal(:,2);
mitdb_Sig06 = mitdb_Sig06(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/103');
% plot(signal(:,1));
mitdb_Sig07 = signal(:,1);
mitdb_Sig07 = mitdb_Sig07(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig08 = signal(:,2);
mitdb_Sig08 = mitdb_Sig08(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/104');
% plot(signal(:,1));
mitdb_Sig09 = signal(:,1);
mitdb_Sig09 = mitdb_Sig09(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig10 = signal(:,2);
mitdb_Sig10 = mitdb_Sig10(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/105');
% plot(signal(:,1));
mitdb_Sig11 = signal(:,1);
mitdb_Sig11 = mitdb_Sig11(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig12 = signal(:,2);
mitdb_Sig12 = mitdb_Sig12(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/106');
% plot(signal(:,1));
mitdb_Sig13 = signal(:,1);
mitdb_Sig13 = mitdb_Sig13(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig14 = signal(:,2);
mitdb_Sig14 = mitdb_Sig14(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/107');
% plot(signal(:,1));
mitdb_Sig15 = signal(:,1);
mitdb_Sig15 = mitdb_Sig15(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig16 = signal(:,2);
mitdb_Sig16 = mitdb_Sig16(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/108');
% plot(signal(:,1));
mitdb_Sig17 = signal(:,1);
mitdb_Sig17 = mitdb_Sig17(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig18 = signal(:,2);
mitdb_Sig18 = mitdb_Sig18(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/109');
% plot(signal(:,1));
mitdb_Sig19 = signal(:,1);
mitdb_Sig19 = mitdb_Sig19(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig20 = signal(:,2);
mitdb_Sig20 = mitdb_Sig20(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/111');
% plot(signal(:,1));
mitdb_Sig21 = signal(:,1);
mitdb_Sig21 = mitdb_Sig21(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig22 = signal(:,2);
mitdb_Sig22 = mitdb_Sig22(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/112');
% plot(signal(:,1));
mitdb_Sig23 = signal(:,1);
mitdb_Sig23 = mitdb_Sig23(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig24 = signal(:,2);
mitdb_Sig24 = mitdb_Sig24(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/113');
% plot(signal(:,1));
mitdb_Sig25 = signal(:,1);
mitdb_Sig25 = mitdb_Sig25(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig26 = signal(:,2);
mitdb_Sig26 = mitdb_Sig26(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/114');
% plot(signal(:,1));
mitdb_Sig27 = signal(:,1);
mitdb_Sig27 = mitdb_Sig27(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig28 = signal(:,2);
mitdb_Sig28 = mitdb_Sig28(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/115');
% plot(signal(:,1));
mitdb_Sig29 = signal(:,1);
mitdb_Sig29 = mitdb_Sig29(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig30 = signal(:,2);
mitdb_Sig30 = mitdb_Sig30(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/116');
% plot(signal(:,1));
mitdb_Sig31 = signal(:,1);
mitdb_Sig31 = mitdb_Sig31(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig32 = signal(:,2);
mitdb_Sig32 = mitdb_Sig32(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/117');
% plot(signal(:,1));
mitdb_Sig33 = signal(:,1);
mitdb_Sig33 = mitdb_Sig33(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig34 = signal(:,2);
mitdb_Sig34 = mitdb_Sig34(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/118');
% plot(signal(:,1));
mitdb_Sig35 = signal(:,1);
mitdb_Sig35 = mitdb_Sig35(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig36 = signal(:,2);
mitdb_Sig36 = mitdb_Sig36(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/119');
% plot(signal(:,1));
mitdb_Sig37 = signal(:,1);
mitdb_Sig37 = mitdb_Sig37(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig38 = signal(:,2);
mitdb_Sig38 = mitdb_Sig38(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/121');
% plot(signal(:,1));
mitdb_Sig39 = signal(:,1);
mitdb_Sig39 = mitdb_Sig39(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig40 = signal(:,2);
mitdb_Sig40 = mitdb_Sig40(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/122');
% plot(signal(:,1));
mitdb_Sig41 = signal(:,1);
mitdb_Sig41 = mitdb_Sig41(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig42 = signal(:,2);
mitdb_Sig42 = mitdb_Sig42(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/123');
% plot(signal(:,1));
mitdb_Sig43 = signal(:,1);
mitdb_Sig43 = mitdb_Sig43(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig44 = signal(:,2);
mitdb_Sig44 = mitdb_Sig44(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/124');
% plot(signal(:,1));
mitdb_Sig45 = signal(:,1);
mitdb_Sig45 = mitdb_Sig45(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig46 = signal(:,2);
mitdb_Sig46 = mitdb_Sig46(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/200');
% plot(signal(:,1));
mitdb_Sig47 = signal(:,1);
mitdb_Sig47 = mitdb_Sig47(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig48 = signal(:,2);
mitdb_Sig48 = mitdb_Sig48(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/201');
% plot(signal(:,1));
mitdb_Sig49 = signal(:,1);
mitdb_Sig49 = mitdb_Sig49(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig50 = signal(:,2);
mitdb_Sig50 = mitdb_Sig50(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/202');
% plot(signal(:,1));
mitdb_Sig51 = signal(:,1);
mitdb_Sig51 = mitdb_Sig51(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig52 = signal(:,2);
mitdb_Sig52 = mitdb_Sig52(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/203');
% plot(signal(:,1));
mitdb_Sig53 = signal(:,1);
mitdb_Sig53 = mitdb_Sig53(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig54 = signal(:,2);
mitdb_Sig54 = mitdb_Sig54(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/205');
% plot(signal(:,1));
mitdb_Sig55 = signal(:,1);
mitdb_Sig55 = mitdb_Sig55(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig56 = signal(:,2);
mitdb_Sig56 = mitdb_Sig56(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/207');
% plot(signal(:,1));
mitdb_Sig57 = signal(:,1);
mitdb_Sig57 = mitdb_Sig57(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig58 = signal(:,2);
mitdb_Sig58 = mitdb_Sig58(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/208');
% plot(signal(:,1));
mitdb_Sig59 = signal(:,1);
mitdb_Sig59 = mitdb_Sig59(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig60 = signal(:,2);
mitdb_Sig60 = mitdb_Sig60(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/209');
% plot(signal(:,1));
mitdb_Sig61 = signal(:,1);
mitdb_Sig61 = mitdb_Sig61(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig62 = signal(:,2);
mitdb_Sig62 = mitdb_Sig62(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/210');
% plot(signal(:,1));
mitdb_Sig63 = signal(:,1);
mitdb_Sig63 = mitdb_Sig63(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig64 = signal(:,2);
mitdb_Sig64 = mitdb_Sig64(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/212');
% plot(signal(:,1));
mitdb_Sig65 = signal(:,1);
mitdb_Sig65 = mitdb_Sig65(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig66 = signal(:,2);
mitdb_Sig66 = mitdb_Sig66(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/213');
% plot(signal(:,1));
mitdb_Sig67 = signal(:,1);
mitdb_Sig67 = mitdb_Sig67(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig68 = signal(:,2);
mitdb_Sig68 = mitdb_Sig68(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/214');
% plot(signal(:,1));
mitdb_Sig69 = signal(:,1);
mitdb_Sig69 = mitdb_Sig69(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig70 = signal(:,2);
mitdb_Sig70 = mitdb_Sig70(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/215');
% plot(signal(:,1));
mitdb_Sig71 = signal(:,1);
mitdb_Sig71 = mitdb_Sig71(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig72 = signal(:,2);
mitdb_Sig72 = mitdb_Sig72(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/217');
% plot(signal(:,1));
mitdb_Sig73 = signal(:,1);
mitdb_Sig73 = mitdb_Sig73(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig74 = signal(:,2);
mitdb_Sig74 = mitdb_Sig74(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/219');
% plot(signal(:,1));
mitdb_Sig75 = signal(:,1);
mitdb_Sig75 = mitdb_Sig75(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig76 = signal(:,2);
mitdb_Sig76 = mitdb_Sig76(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/220');
% plot(signal(:,1));
mitdb_Sig77 = signal(:,1);
mitdb_Sig77 = mitdb_Sig77(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig78 = signal(:,2);
mitdb_Sig78 = mitdb_Sig78(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/221');
% plot(signal(:,1));
mitdb_Sig79 = signal(:,1);
mitdb_Sig79 = mitdb_Sig79(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig80 = signal(:,2);
mitdb_Sig80 = mitdb_Sig80(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/222');
% plot(signal(:,1));
mitdb_Sig81 = signal(:,1);
mitdb_Sig81 = mitdb_Sig81(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig82 = signal(:,2);
mitdb_Sig82 = mitdb_Sig82(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/223');
% plot(signal(:,1));
mitdb_Sig83 = signal(:,1);
mitdb_Sig83 = mitdb_Sig83(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig84 = signal(:,2);
mitdb_Sig84 = mitdb_Sig84(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/228');
% plot(signal(:,1));
mitdb_Sig85 = signal(:,1);
mitdb_Sig85 = mitdb_Sig85(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig86 = signal(:,2);
mitdb_Sig86 = mitdb_Sig86(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/230');
% plot(signal(:,1));
mitdb_Sig87 = signal(:,1);
mitdb_Sig87 = mitdb_Sig87(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig88 = signal(:,2);
mitdb_Sig88 = mitdb_Sig88(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/231');
% plot(signal(:,1));
mitdb_Sig89 = signal(:,1);
mitdb_Sig89 = mitdb_Sig89(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig90 = signal(:,2);
mitdb_Sig90 = mitdb_Sig90(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/232');
% plot(signal(:,1));
mitdb_Sig91 = signal(:,1);
mitdb_Sig91 = mitdb_Sig91(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig92 = signal(:,2);
mitdb_Sig92 = mitdb_Sig92(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/233');
% plot(signal(:,1));
mitdb_Sig93 = signal(:,1);
mitdb_Sig93 = mitdb_Sig93(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig94 = signal(:,2);
mitdb_Sig94 = mitdb_Sig94(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('mitdb/234');
% plot(signal(:,1));
mitdb_Sig95 = signal(:,1);
mitdb_Sig95 = mitdb_Sig95(2e5:2e5+500);

% plot(signal(:,2));
mitdb_Sig96 = signal(:,2);
mitdb_Sig96 = mitdb_Sig96(2e5:2e5+500);

for ix = 1:96
    if ix <= 9
        fig_id = figure(); plot(eval(['mitdb_Sig0',num2str(ix)]));
        xlim([0,500]);
        saveas(fig_id,['C:\Users\shaya\Desktop\Images\Temp\','Sig0',num2str(ix),'.png']);
        Img1 = imread(['C:\Users\shaya\Desktop\Images\Temp\','Sig0',num2str(ix),'.png']);
        Img2 = imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]
        imwrite(Img2,[Image_Path,'\mitdb\','Sig0',num2str(ix),'.png']);
        fig_id = figure(); spectrogram(eval(['mitdb_Sig0',num2str(ix)]));
        saveas(fig_id,[Image_Path,'\mitdb\','Spec0',num2str(ix),'.png']);
    else
        fig_id = figure(); plot(eval(['mitdb_Sig',num2str(ix)]));
        xlim([0,500]);
        saveas(fig_id,['C:\Users\shaya\Desktop\Images\Temp\','Sig',num2str(ix),'.png']);
        Img1 = imread(['C:\Users\shaya\Desktop\Images\Temp\','Sig',num2str(ix),'.png']);
        Img2 = imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]      
        saveas(Img2,[Image_Path,'\mitdb\','Sig',num2str(ix),'.png']);
        fig_id = figure(); spectrogram(eval(['mitdb_Sig',num2str(ix)]));
        saveas(fig_id,[Image_Path,'\mitdb\','Spec',num2str(ix),'.png']);
    end
end

close all; clc; fclose('all');

%% ---------- General: The MIT-BIH Long Term Database (ltdb) ----------
[signal,Fs,tm]=rdsamp('ltdb/14046');
% plot(signal(:,1));
ltdb_Sig01 = signal(:,1);
ltdb_Sig01 = ltdb_Sig01(2e5:2e5+500);

% plot(signal(:,2));
ltdb_Sig02 = signal(:,2);
ltdb_Sig02 = ltdb_Sig02(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('ltdb/14134');
% plot(signal(:,1));
ltdb_Sig03 = signal(:,1);
ltdb_Sig03 = ltdb_Sig03(2e5:2e5+500);

% plot(signal(:,2));
ltdb_Sig04 = signal(:,2);
ltdb_Sig04 = ltdb_Sig04(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('ltdb/14149');
% plot(signal(:,1));
ltdb_Sig05 = signal(:,1);
ltdb_Sig05 = ltdb_Sig05(2e5:2e5+500);

% plot(signal(:,2));
ltdb_Sig06 = signal(:,2);
ltdb_Sig06 = ltdb_Sig06(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('ltdb/14157');
% plot(signal(:,1));
ltdb_Sig07 = signal(:,1);
ltdb_Sig07 = ltdb_Sig07(2e5:2e5+500);

% plot(signal(:,2));
ltdb_Sig08 = signal(:,2);
ltdb_Sig08 = ltdb_Sig08(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('ltdb/14172');
% plot(signal(:,1));
ltdb_Sig09 = signal(:,1);
ltdb_Sig09 = ltdb_Sig09(2e5:2e5+500);

% plot(signal(:,2));
ltdb_Sig10 = signal(:,2);
ltdb_Sig10 = ltdb_Sig10(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('ltdb/14184');
% plot(signal(:,1));
ltdb_Sig11 = signal(:,1);
ltdb_Sig11 = ltdb_Sig11(2e5:2e5+500);

% plot(signal(:,2));
ltdb_Sig12 = signal(:,2);
ltdb_Sig12 = ltdb_Sig12(2e5:2e5+500);

[signal,Fs,tm]=rdsamp('ltdb/15814');
% plot(signal(:,1));
ltdb_Sig13 = signal(:,1);
ltdb_Sig13 = ltdb_Sig13(2e5:2e5+500);

% plot(signal(:,2));
ltdb_Sig14 = signal(:,2);
ltdb_Sig14 = ltdb_Sig14(2e5:2e5+500);

for ix = 1:14
    if ix <= 9
        fig_id = figure(); plot(eval(['svdb_Sig0',num2str(ix)]));
        xlim([0,500]);
        saveas(fig_id,['C:\Users\shaya\Desktop\Images\Temp\','Sig0',num2str(ix),'.png']);
        Img1 = imread(['C:\Users\shaya\Desktop\Images\Temp\','Sig0',num2str(ix),'.png']);
        Img2 = imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]
        imwrite(Img2,[Image_Path,'\ltdb\','Sig0',num2str(ix),'.png']);
        fig_id = figure(); spectrogram(eval(['svdb_Sig0',num2str(ix)]));
        saveas(fig_id,[Image_Path,'\ltdb\','Spec0',num2str(ix),'.png']);
    else
        fig_id = figure(); plot(eval(['svdb_Sig',num2str(ix)]));
        xlim([0,500]);
        saveas(fig_id,['C:\Users\shaya\Desktop\Images\Temp\','Sig',num2str(ix),'.png']);
        Img1 = imread(['C:\Users\shaya\Desktop\Images\Temp\','Sig',num2str(ix),'.png']);
        Img2 = imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]        
        saveas(Img2,[Image_Path,'\ltdb\','Sig',num2str(ix),'.png']);
        fig_id = figure(); spectrogram(eval(['svdb_Sig',num2str(ix)]));
        saveas(fig_id,[Image_Path,'\ltdb\','Spec',num2str(ix),'.png']);
    end
end

close all; clc; fclose('all');
% ------------------------------------------------------------------------