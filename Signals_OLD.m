%% Preparing Environment
clear all; close all; clc; fclose('all');
Image_Path = 'C:\Users\shaya\Desktop\Images';
%% ---------- Normal: MIT-BIH Normal Sinus Rhythm Database (nsrdb) ----------

[signal,Fs,tm]=rdsamp('nsrdb/16265');
% plot(signal(:,1));
nsrdb_Sig01 = signal(:,1);
length()
nsrdb_Sig01 = nsrdb_Sig01(2e6:2e6+500);



% plot(signal(:,2));
nsrdb_Sig02 = signal(:,2);
nsrdb_Sig02 = nsrdb_Sig02(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('nsrdb/16272');
% plot(signal(:,1));
nsrdb_Sig03 = signal(:,1);
nsrdb_Sig03 = nsrdb_Sig03(2e6:2e6+500);

% plot(signal(:,2));
nsrdb_Sig04 = signal(:,2);
nsrdb_Sig04 = nsrdb_Sig04(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('nsrdb/16273');
% plot(signal(:,1));
nsrdb_Sig05 = signal(:,1);
nsrdb_Sig05 = nsrdb_Sig05(2e6:2e6+500);

% plot(signal(:,2));
nsrdb_Sig06 = signal(:,2);
nsrdb_Sig06 = nsrdb_Sig06(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('nsrdb/16420');
% plot(signal(:,1));
nsrdb_Sig07 = signal(:,1);
nsrdb_Sig07 = nsrdb_Sig07(2e6:2e6+500);

% plot(signal(:,2));
nsrdb_Sig08 = signal(:,2);
nsrdb_Sig08 = nsrdb_Sig08(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('nsrdb/16483');
% plot(signal(:,1));
nsrdb_Sig09 = signal(:,1);
nsrdb_Sig09 = nsrdb_Sig09(2e6:2e6+500);

% plot(signal(:,2));
nsrdb_Sig10 = signal(:,2);
nsrdb_Sig10 = nsrdb_Sig10(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('nsrdb/16539');
% plot(signal(:,1));
nsrdb_Sig11 = signal(:,1);
nsrdb_Sig11 = nsrdb_Sig11(2e6:2e6+500);

% plot(signal(:,2));
nsrdb_Sig12 = signal(:,2);
nsrdb_Sig12 = nsrdb_Sig12(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('nsrdb/16773');
% plot(signal(:,1));
nsrdb_Sig13 = signal(:,1);
nsrdb_Sig13 = nsrdb_Sig13(2e6:2e6+500);

% plot(signal(:,2));
nsrdb_Sig14 = signal(:,2);
nsrdb_Sig14 = nsrdb_Sig14(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('nsrdb/16786');
% plot(signal(:,1));
nsrdb_Sig15 = signal(:,1);
nsrdb_Sig15 = nsrdb_Sig15(2e6:2e6+500);

% plot(signal(:,2));
nsrdb_Sig16 = signal(:,2);
nsrdb_Sig16 = nsrdb_Sig16(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('nsrdb/16795');
% plot(signal(:,1));
nsrdb_Sig17 = signal(:,1);
nsrdb_Sig17 = nsrdb_Sig17(2e6:2e6+500);

% plot(signal(:,2));
nsrdb_Sig18 = signal(:,2);
nsrdb_Sig18 = nsrdb_Sig18(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('nsrdb/17052');
% plot(signal(:,1));
nsrdb_Sig19 = signal(:,1);
nsrdb_Sig19 = nsrdb_Sig19(2e6:2e6+500);

% plot(signal(:,2));
nsrdb_Sig20 = signal(:,2);
nsrdb_Sig20 = nsrdb_Sig20(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('nsrdb/17453');
% plot(signal(:,1));
nsrdb_Sig21 = signal(:,1);
nsrdb_Sig21 = nsrdb_Sig21(2e6:2e6+500);

% plot(signal(:,2));
nsrdb_Sig22 = signal(:,2);
nsrdb_Sig22 = nsrdb_Sig22(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('nsrdb/18177');
% plot(signal(:,1));
nsrdb_Sig23 = signal(:,1);
nsrdb_Sig23 = nsrdb_Sig23(2e6:2e6+500);

% plot(signal(:,2));
nsrdb_Sig24 = signal(:,2);
nsrdb_Sig24 = nsrdb_Sig24(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('nsrdb/18184');
% plot(signal(:,1));
nsrdb_Sig25 = signal(:,1);
nsrdb_Sig25 = nsrdb_Sig25(2e6:2e6+500);

% plot(signal(:,2));
nsrdb_Sig26 = signal(:,2);
nsrdb_Sig26 = nsrdb_Sig26(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('nsrdb/19088');
% plot(signal(:,1));
nsrdb_Sig27 = signal(:,1);
nsrdb_Sig27 = nsrdb_Sig27(2e6:2e6+500);

% plot(signal(:,2));
nsrdb_Sig28 = signal(:,2);
nsrdb_Sig28 = nsrdb_Sig28(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('nsrdb/19090');
% plot(signal(:,1));
nsrdb_Sig29 = signal(:,1);
nsrdb_Sig29 = nsrdb_Sig29(2e6:2e6+500);

% plot(signal(:,2));
nsrdb_Sig30 = signal(:,2);
nsrdb_Sig30 = nsrdb_Sig30(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('nsrdb/19093');
% plot(signal(:,1));
nsrdb_Sig31 = signal(:,1);
nsrdb_Sig31 = nsrdb_Sig31(2e6:2e6+500);

% plot(signal(:,2));
nsrdb_Sig32 = signal(:,2);
nsrdb_Sig32 = nsrdb_Sig32(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('nsrdb/19140');
% plot(signal(:,1));
nsrdb_Sig33 = signal(:,1);
nsrdb_Sig33 = nsrdb_Sig33(2e6:2e6+500);

% plot(signal(:,2));
nsrdb_Sig34 = signal(:,2);
nsrdb_Sig34 = nsrdb_Sig34(2e6:2e6+500);

[signal,Fs,tm]=rdsamp('nsrdb/19830');
% plot(signal(:,1));
nsrdb_Sig35 = signal(:,1);
nsrdb_Sig35 = nsrdb_Sig35(2e6:2e6+500);

% plot(signal(:,2));
nsrdb_Sig36 = signal(:,2);
nsrdb_Sig36 = nsrdb_Sig36(2e6:2e6+500);

for ix = 1:36
    if ix <= 9
        fig_id = figure(); plot(eval(['nsrdb_Sig0',num2str(ix)]));
        xlim([0,500]);
        saveas(fig_id,['C:\Users\shaya\Desktop\Images\Temp\','Sig0',num2str(ix),'.png']);
        Img1 = imread(['C:\Users\shaya\Desktop\Images\Temp\','Sig0',num2str(ix),'.png']);
        Img2 = imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]
        imwrite(Img2,[Image_Path,'\nsrdb\','Sig0',num2str(ix),'.png']);
        fig_id = figure(); spectrogram(eval(['nsrdb_Sig0',num2str(ix)]));
        caxis([-100,+20]);
        saveas(fig_id,[Image_Path,'\nsrdb\','Spec0',num2str(ix),'.png']);
        Img1 = imread([Image_Path,'\nsrdb\','Spec0',num2str(ix),'.png']);
        Img2 = imcrop(Img1,[99 50 587 534]); % Size of Crop: [xmin ymin width height]
        imwrite(Img2,[Image_Path,'\nsrdb\','Spec0',num2str(ix),'.png']);
        imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]
        imwrite(Img2,[Image_Path,'\nsrdb\','Spec0',num2str(ix),'.png']);
    else
        fig_id = figure(); plot(eval(['nsrdb_Sig',num2str(ix)]));
        xlim([0,500]);
        saveas(fig_id,['C:\Users\shaya\Desktop\Images\Temp\','Sig',num2str(ix),'.png']);
        Img1 = imread(['C:\Users\shaya\Desktop\Images\Temp\','Sig',num2str(ix),'.png']);
        Img2 = imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]
        imwrite(Img2,[Image_Path,'\nsrdb\','Sig0',num2str(ix),'.png']);
        fig_id = figure(); spectrogram(eval(['nsrdb_Sig',num2str(ix)]));
        caxis([-100,+20]);
        saveas(fig_id,[Image_Path,'\nsrdb\','Spec',num2str(ix),'.png']);
        Img1 = imread([Image_Path,'\nsrdb\','Spec',num2str(ix),'.png']);
        Img2 = imcrop(Img1,[99 50 587 534]); % Size of Crop: [xmin ymin width height]
        imwrite(Img2,[Image_Path,'\nsrdb\','Spec',num2str(ix),'.png']);
        imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]
        imwrite(Img2,[Image_Path,'\nsrdb\','Spec',num2str(ix),'.png']);
    end
end

close all; clc; fclose('all');

%% ---------- ST: MIT-BIH ST Change Database (stdb) ----------

[signal,Fs,tm]=rdsamp('stdb/300');
% plot(signal(:,1));
stdb_Sig01 = signal(:,1);
stdb_Sig01 = stdb_Sig01(1e5:1e5+500);

% plot(signal(:,2));
stdb_Sig02 = signal(:,2);
stdb_Sig02 = stdb_Sig02(1e5:1e5+500);

[signal,Fs,tm]=rdsamp('stdb/301');
% plot(signal(:,1));
stdb_Sig03 = signal(:,1);
stdb_Sig03 = stdb_Sig03(1e5:1e5+500);

% plot(signal(:,2));
stdb_Sig04 = signal(:,2);
stdb_Sig04 = stdb_Sig04(1e5:1e5+500);

[signal,Fs,tm]=rdsamp('stdb/302');
% plot(signal(:,1));
stdb_Sig05 = signal(:,1);
stdb_Sig05 = stdb_Sig05(1e5:1e5+500);

% plot(signal(:,2));
stdb_Sig06 = signal(:,2);
stdb_Sig06 = stdb_Sig06(1e5:1e5+500);

[signal,Fs,tm]=rdsamp('stdb/303');
% plot(signal(:,1));
stdb_Sig07 = signal(:,1);
stdb_Sig07 = stdb_Sig07(1e5:1e5+500);

% plot(signal(:,2));
stdb_Sig08 = signal(:,2);
stdb_Sig08 = stdb_Sig08(1e5:1e5+500);

[signal,Fs,tm]=rdsamp('stdb/304');
% plot(signal(:,1));
stdb_Sig09 = signal(:,1);
stdb_Sig09 = stdb_Sig09(1e5:1e5+500);

% plot(signal(:,2));
stdb_Sig10 = signal(:,2);
stdb_Sig10 = stdb_Sig10(1e5:1e5+500);

[signal,Fs,tm]=rdsamp('stdb/305');
% plot(signal(:,1));
stdb_Sig11 = signal(:,1);
stdb_Sig11 = stdb_Sig11(1e5:1e5+500);

% plot(signal(:,2));
stdb_Sig12 = signal(:,2);
stdb_Sig12 = stdb_Sig12(1e5:1e5+500);

[signal,Fs,tm]=rdsamp('stdb/306');
% plot(signal(:,1));
stdb_Sig13 = signal(:,1);
stdb_Sig13 = stdb_Sig13(1e5:1e5+500);

% plot(signal(:,2));
stdb_Sig14 = signal(:,2);
stdb_Sig14 = stdb_Sig14(1e5:1e5+500);

[signal,Fs,tm]=rdsamp('stdb/307');
% plot(signal(:,1));
stdb_Sig15 = signal(:,1);
stdb_Sig15 = stdb_Sig15(1e5:1e5+500);

% plot(signal(:,2));
stdb_Sig16 = signal(:,2);
stdb_Sig16 = stdb_Sig16(1e5:1e5+500);

[signal,Fs,tm]=rdsamp('stdb/308');
% plot(signal(:,1));
stdb_Sig17 = signal(:,1);
stdb_Sig17 = stdb_Sig17(1e5:1e5+500);

% plot(signal(:,2));
stdb_Sig18 = signal(:,2);
stdb_Sig18 = stdb_Sig18(1e5:1e5+500);

[signal,Fs,tm]=rdsamp('stdb/309');
% plot(signal(:,1));
stdb_Sig19 = signal(:,1);
stdb_Sig19 = stdb_Sig19(1e5:1e5+500);

% plot(signal(:,2));
stdb_Sig20 = signal(:,2);
stdb_Sig20 = stdb_Sig20(1e5:1e5+500);

[signal,Fs,tm]=rdsamp('stdb/310');
% plot(signal(:,1));
stdb_Sig21 = signal(:,1);
stdb_Sig21 = stdb_Sig21(1e5:1e5+500);

% plot(signal(:,2));
stdb_Sig22 = signal(:,2);
stdb_Sig22 = stdb_Sig22(1e5:1e5+500);

[signal,Fs,tm]=rdsamp('stdb/311');
% plot(signal(:,1));
stdb_Sig23 = signal(:,1);
stdb_Sig23 = stdb_Sig23(1e5:1e5+500);

% plot(signal(:,2));
stdb_Sig24 = signal(:,2);
stdb_Sig24 = stdb_Sig24(1e5:1e5+500);

[signal,Fs,tm]=rdsamp('stdb/312');
% plot(signal(:,1));
stdb_Sig25 = signal(:,1);
stdb_Sig25 = stdb_Sig25(1e5:1e5+500);

% plot(signal(:,2));
stdb_Sig26 = signal(:,2);
stdb_Sig26 = stdb_Sig26(1e5:1e5+500);

[signal,Fs,tm]=rdsamp('stdb/313');
% plot(signal(:,1));
stdb_Sig27 = signal(:,1);
stdb_Sig27 = stdb_Sig27(1e5:1e5+500);

[signal,Fs,tm]=rdsamp('stdb/314');
% plot(signal(:,1));
stdb_Sig28 = signal(:,1);
stdb_Sig28 = stdb_Sig28(1e5:1e5+500);

[signal,Fs,tm]=rdsamp('stdb/315');
% plot(signal(:,1));
stdb_Sig29 = signal(:,1);
stdb_Sig29 = stdb_Sig29(1e5:1e5+500);

[signal,Fs,tm]=rdsamp('stdb/316');
% plot(signal(:,1));
stdb_Sig30 = signal(:,1);
stdb_Sig30 = stdb_Sig30(1e5:1e5+500);

[signal,Fs,tm]=rdsamp('stdb/317');
% plot(signal(:,1));
stdb_Sig31 = signal(:,1);
stdb_Sig31 = stdb_Sig31(1e5:1e5+500);

[signal,Fs,tm]=rdsamp('stdb/318');
% plot(signal(:,1));
stdb_Sig32 = signal(:,1);
stdb_Sig32 = stdb_Sig32(1e5:1e5+500);

% plot(signal(:,1));
stdb_Sig33 = signal(:,2);
stdb_Sig33 = stdb_Sig33(1e5:1e5+500);

[signal,Fs,tm]=rdsamp('stdb/320');
% plot(signal(:,1));
stdb_Sig34 = signal(:,1);
stdb_Sig34 = stdb_Sig34(1e5:1e5+500);

[signal,Fs,tm]=rdsamp('stdb/321');
% plot(signal(:,1));
stdb_Sig35 = signal(:,1);
stdb_Sig35 = stdb_Sig35(1e5:1e5+500);

[signal,Fs,tm]=rdsamp('stdb/322');
% plot(signal(:,1));
stdb_Sig36 = signal(:,1);
stdb_Sig36 = stdb_Sig36(1e5:1e5+500);

[signal,Fs,tm]=rdsamp('stdb/323');
% plot(signal(:,1));
stdb_Sig37 = signal(:,1);
stdb_Sig37 = stdb_Sig37(1e5:1e5+500);

[signal,Fs,tm]=rdsamp('stdb/324');
% plot(signal(:,1));
stdb_Sig38 = signal(:,1);
stdb_Sig38 = stdb_Sig38(1e5:1e5+500);

% plot(signal(:,2));
stdb_Sig39 = signal(:,1);
stdb_Sig39 = stdb_Sig39(1e5:1e5+500);

[signal,Fs,tm]=rdsamp('stdb/325');
% plot(signal(:,1));
stdb_Sig40 = signal(:,1);
stdb_Sig40 = stdb_Sig40(1e5:1e5+500);

% plot(signal(:,1));
stdb_Sig41 = signal(:,2);
stdb_Sig41 = stdb_Sig41(1e5:1e5+500);

[signal,Fs,tm]=rdsamp('stdb/326');
% plot(signal(:,1));
stdb_Sig42 = signal(:,1);
stdb_Sig42 = stdb_Sig42(1e5:1e5+500);

stdb_Sig43 = signal(:,2);
stdb_Sig43 = stdb_Sig43(1e5:1e5+500);

[signal,Fs,tm]=rdsamp('stdb/327');
% plot(signal(:,1));
stdb_Sig44 = signal(:,1);
stdb_Sig44 = stdb_Sig44(1e5:1e5+500);

% plot(signal(:,1));
stdb_Sig45 = signal(:,2);
stdb_Sig45 = stdb_Sig45(1e5:1e5+500);

for ix = 1:45
    if ix <= 9
        fig_id = figure(); plot(eval(['stdb_Sig0',num2str(ix)]));
        xlim([0,500]);
        saveas(fig_id,['C:\Users\shaya\Desktop\Images\Temp\','Sig0',num2str(ix),'.png']);
        Img1 = imread(['C:\Users\shaya\Desktop\Images\Temp\','Sig0',num2str(ix),'.png']);
        Img2 = imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]
        imwrite(Img2,[Image_Path,'\stdb\','Sig0',num2str(ix),'.png']);
        fig_id = figure(); spectrogram(eval(['stdb_Sig0',num2str(ix)]));
        caxis([-100,+20]);
        saveas(fig_id,[Image_Path,'\stdb\','Spec0',num2str(ix),'.png']);
        Img1 = imread([Image_Path,'\stdb\','Spec0',num2str(ix),'.png']);
        Img2 = imcrop(Img1,[99 50 587 534]); % Size of Crop: [xmin ymin width height]
        imwrite(Img2,[Image_Path,'\stdb\','Spec0',num2str(ix),'.png']);
        imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]
        imwrite(Img2,[Image_Path,'\stdb\','Spec0',num2str(ix),'.png']);
    else
        fig_id = figure(); plot(eval(['stdb_Sig',num2str(ix)]));
        xlim([0,500]);
        saveas(fig_id,['C:\Users\shaya\Desktop\Images\Temp\','Sig',num2str(ix),'.png']);
        Img1 = imread(['C:\Users\shaya\Desktop\Images\Temp\','Sig',num2str(ix),'.png']);
        Img2 = imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]
        imwrite(Img2,[Image_Path,'\stdb\','Sig0',num2str(ix),'.png']);
        fig_id = figure(); spectrogram(eval(['stdb_Sig',num2str(ix)]));
        caxis([-100,+20]);
        saveas(fig_id,[Image_Path,'\stdb\','Spec',num2str(ix),'.png']);
        Img1 = imread([Image_Path,'\stdb\','Spec',num2str(ix),'.png']);
        Img2 = imcrop(Img1,[99 50 587 534]); % Size of Crop: [xmin ymin width height]
        imwrite(Img2,[Image_Path,'\stdb\','Spec',num2str(ix),'.png']);
        imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]
        imwrite(Img2,[Image_Path,'\stdb\','Spec',num2str(ix),'.png']);
    end
end

close all; clc; fclose('all');

%% ---------- AF: MIT-BIH Atrial Fibrillation Database (afdb) ----------
[signal,Fs,tm]=rdsamp('afdb/04015');
% plot(signal(:,1));
afdb_Sig01 = signal(:,1);
afdb_Sig01 = afdb_Sig01(1.2e6:1.2e6+500);

afdb_Sig02 = signal(:,1);
afdb_Sig02 = afdb_Sig02(1.2e6:1.2e6+500);

[signal,Fs,tm]=rdsamp('afdb/04043');
% plot(signal(:,1));
afdb_Sig03 = signal(:,1);
afdb_Sig03 = afdb_Sig03((1.2e6:1.2e6+500));

afdb_Sig04 = signal(:,1);
afdb_Sig04 = afdb_Sig04((1.2e6:1.2e6+500));

[signal,Fs,tm]=rdsamp('afdb/04048');
% plot(signal(:,1));
afdb_Sig05 = signal(:,1);
afdb_Sig05 = afdb_Sig05((1.2e6:1.2e6+500));

afdb_Sig06 = signal(:,1);
afdb_Sig06 = afdb_Sig06((1.2e6:1.2e6+500));

[signal,Fs,tm]=rdsamp('afdb/04126');
% plot(signal(:,1));
afdb_Sig07 = signal(:,1);
afdb_Sig07 = afdb_Sig07((1.2e6:1.2e6+500));

afdb_Sig08 = signal(:,1);
afdb_Sig08 = afdb_Sig08((1.2e6:1.2e6+500));

[signal,Fs,tm]=rdsamp('afdb/04746');
% plot(signal(:,1));
afdb_Sig09 = signal(:,1);
afdb_Sig09 = afdb_Sig09((1.2e6:1.2e6+500));

afdb_Sig10 = signal(:,1);
afdb_Sig10 = afdb_Sig10((1.2e6:1.2e6+500));

[signal,Fs,tm]=rdsamp('afdb/04908');
% plot(signal(:,1));
afdb_Sig11 = signal(:,1);
afdb_Sig11 = afdb_Sig11((1.2e6:1.2e6+500));

afdb_Sig12 = signal(:,1);
afdb_Sig12 = afdb_Sig12((1.2e6:1.2e6+500));

[signal,Fs,tm]=rdsamp('afdb/04936');
% plot(signal(:,1));
afdb_Sig13 = signal(:,1);
afdb_Sig13 = afdb_Sig13((1.2e6:1.2e6+500));

afdb_Sig14 = signal(:,1);
afdb_Sig14 = afdb_Sig14((1.2e6:1.2e6+500));

[signal,Fs,tm]=rdsamp('afdb/05091');
% plot(signal(:,1));
afdb_Sig15 = signal(:,1);
afdb_Sig15 = afdb_Sig15((1.2e6:1.2e6+500));

afdb_Sig16 = signal(:,1);
afdb_Sig16 = afdb_Sig16((1.2e6:1.2e6+500));

[signal,Fs,tm]=rdsamp('afdb/05121');
% plot(signal(:,1));
afdb_Sig17 = signal(:,1);
afdb_Sig17 = afdb_Sig17((1.2e6:1.2e6+500));

afdb_Sig18 = signal(:,1);
afdb_Sig18 = afdb_Sig18((1.2e6:1.2e6+500));

[signal,Fs,tm]=rdsamp('afdb/05261');
% plot(signal(:,1));
afdb_Sig19 = signal(:,1);
afdb_Sig19 = afdb_Sig19((1.2e6:1.2e6+500));

afdb_Sig20 = signal(:,1);
afdb_Sig20 = afdb_Sig20((1.2e6:1.2e6+500));

[signal,Fs,tm]=rdsamp('afdb/06426');
% plot(signal(:,1));
afdb_Sig21 = signal(:,1);
afdb_Sig21 = afdb_Sig21((1.2e6:1.2e6+500));

afdb_Sig22 = signal(:,1);
afdb_Sig22 = afdb_Sig22((1.2e6:1.2e6+500));

[signal,Fs,tm]=rdsamp('afdb/06453');
% plot(signal(:,1));
afdb_Sig23 = signal(:,1);
afdb_Sig23 = afdb_Sig23((1.2e6:1.2e6+500));

afdb_Sig24 = signal(:,1);
afdb_Sig24 = afdb_Sig24((1.2e6:1.2e6+500));

[signal,Fs,tm]=rdsamp('afdb/06995');
% plot(signal(:,1));
afdb_Sig25 = signal(:,1);
afdb_Sig25 = afdb_Sig25((1.2e6:1.2e6+500));

afdb_Sig26 = signal(:,1);
afdb_Sig26 = afdb_Sig26((1.2e6:1.2e6+500));

[signal,Fs,tm]=rdsamp('afdb/07162');
% plot(signal(:,1));
afdb_Sig27 = signal(:,1);
afdb_Sig27 = afdb_Sig27((1.2e6:1.2e6+500));

afdb_Sig28 = signal(:,1);
afdb_Sig28 = afdb_Sig28((1.2e6:1.2e6+500));

[signal,Fs,tm]=rdsamp('afdb/07859');
% plot(signal(:,1));
afdb_Sig29 = signal(:,1);
afdb_Sig29 = afdb_Sig29((1.2e6:1.2e6+500));

afdb_Sig30 = signal(:,1);
afdb_Sig30 = afdb_Sig30((1.2e6:1.2e6+500));

[signal,Fs,tm]=rdsamp('afdb/07879');
% plot(signal(:,1));
afdb_Sig31 = signal(:,1);
afdb_Sig31 = afdb_Sig31((1.2e6:1.2e6+500));

afdb_Sig32 = signal(:,1);
afdb_Sig32 = afdb_Sig32((1.2e6:1.2e6+500));

[signal,Fs,tm]=rdsamp('afdb/07910');
% plot(signal(:,1));
afdb_Sig33 = signal(:,1);
afdb_Sig33 = afdb_Sig33((1.2e6:1.2e6+500));

afdb_Sig34 = signal(:,1);
afdb_Sig34 = afdb_Sig34((1.2e6:1.2e6+500));

[signal,Fs,tm]=rdsamp('afdb/08215');
% plot(signal(:,1));
afdb_Sig35 = signal(:,1);
afdb_Sig35 = afdb_Sig35((1.2e6:1.2e6+500));

afdb_Sig36 = signal(:,1);
afdb_Sig36 = afdb_Sig36((1.2e6:1.2e6+500));

[signal,Fs,tm]=rdsamp('afdb/08219');
% plot(signal(:,1));
afdb_Sig37 = signal(:,1);
afdb_Sig37 = afdb_Sig37((1.2e6:1.2e6+500));

afdb_Sig38 = signal(:,1);
afdb_Sig38 = afdb_Sig38((1.2e6:1.2e6+500));

[signal,Fs,tm]=rdsamp('afdb/08378');
% plot(signal(:,1));
afdb_Sig39 = signal(:,1);
afdb_Sig39 = afdb_Sig39((1.2e6:1.2e6+500));

afdb_Sig40 = signal(:,1);
afdb_Sig40 = afdb_Sig40((1.2e6:1.2e6+500));

[signal,Fs,tm]=rdsamp('afdb/08405');
% plot(signal(:,1));
afdb_Sig41 = signal(:,1);
afdb_Sig41 = afdb_Sig41((1.2e6:1.2e6+500));

afdb_Sig42 = signal(:,1);
afdb_Sig42 = afdb_Sig42((1.2e6:1.2e6+500));

[signal,Fs,tm]=rdsamp('afdb/08434');
% plot(signal(:,1));
afdb_Sig43 = signal(:,1);
afdb_Sig43 = afdb_Sig43((1.2e6:1.2e6+500));

afdb_Sig44 = signal(:,1);
afdb_Sig44 = afdb_Sig44((1.2e6:1.2e6+500));

[signal,Fs,tm]=rdsamp('afdb/08455');
% plot(signal(:,1));
afdb_Sig45 = signal(:,1);
afdb_Sig45 = afdb_Sig45((1.2e6:1.2e6+500));

afdb_Sig46 = signal(:,1);
afdb_Sig46 = afdb_Sig46((1.2e6:1.2e6+500));

for ix = 1:46
    if ix <= 9
        fig_id = figure(); plot(eval(['afdb_Sig0',num2str(ix)]));
        xlim([0,500]);
        saveas(fig_id,['C:\Users\shaya\Desktop\Images\Temp\','Sig0',num2str(ix),'.png']);
        Img1 = imread(['C:\Users\shaya\Desktop\Images\Temp\','Sig0',num2str(ix),'.png']);
        Img2 = imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]
        imwrite(Img2,[Image_Path,'\afdb\','Sig0',num2str(ix),'.png']);
        fig_id = figure(); spectrogram(eval(['afdb_Sig0',num2str(ix)]));
        caxis([-100,+20]);
        saveas(fig_id,[Image_Path,'\afdb\','Spec0',num2str(ix),'.png']);
        Img1 = imread([Image_Path,'\afdb\','Spec0',num2str(ix),'.png']);
        Img2 = imcrop(Img1,[99 50 587 534]); % Size of Crop: [xmin ymin width height]
        imwrite(Img2,[Image_Path,'\afdb\','Spec0',num2str(ix),'.png']);
        imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]
        imwrite(Img2,[Image_Path,'\afdb\','Spec0',num2str(ix),'.png']);
    else
        fig_id = figure(); plot(eval(['afdb_Sig',num2str(ix)]));
        xlim([0,500]);
        saveas(fig_id,['C:\Users\shaya\Desktop\Images\Temp\','Sig',num2str(ix),'.png']);
        Img1 = imread(['C:\Users\shaya\Desktop\Images\Temp\','Sig',num2str(ix),'.png']);
        Img2 = imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]
        imwrite(Img2,[Image_Path,'\afdb\','Sig0',num2str(ix),'.png']);
        fig_id = figure(); spectrogram(eval(['afdb_Sig',num2str(ix)]));
        caxis([-100,+20]);
        saveas(fig_id,[Image_Path,'\afdb\','Spec',num2str(ix),'.png']);
        Img1 = imread([Image_Path,'\afdb\','Spec',num2str(ix),'.png']);
        Img2 = imcrop(Img1,[99 50 587 534]); % Size of Crop: [xmin ymin width height]
        imwrite(Img2,[Image_Path,'\afdb\','Spec',num2str(ix),'.png']);
        imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]
        imwrite(Img2,[Image_Path,'\afdb\','Spec',num2str(ix),'.png']);
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
        caxis([-100,+20]);
        saveas(fig_id,[Image_Path,'\vfdb\','Spec0',num2str(ix),'.png']);
        Img1 = imread([Image_Path,'\vfdb\','Spec0',num2str(ix),'.png']);
        Img2 = imcrop(Img1,[99 50 587 534]); % Size of Crop: [xmin ymin width height]
        imwrite(Img2,[Image_Path,'\vfdb\','Spec0',num2str(ix),'.png']);
        imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]
        imwrite(Img2,[Image_Path,'\vfdb\','Spec0',num2str(ix),'.png']);
    else
        fig_id = figure(); plot(eval(['vfdb_Sig',num2str(ix)]));
        xlim([0,500]);
        saveas(fig_id,['C:\Users\shaya\Desktop\Images\Temp\','Sig',num2str(ix),'.png']);
        Img1 = imread(['C:\Users\shaya\Desktop\Images\Temp\','Sig',num2str(ix),'.png']);
        Img2 = imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]
        imwrite(Img2,[Image_Path,'\vfdb\','Sig0',num2str(ix),'.png']);
        fig_id = figure(); spectrogram(eval(['vfdb_Sig',num2str(ix)]));
        caxis([-100,+20]);
        saveas(fig_id,[Image_Path,'\vfdb\','Spec',num2str(ix),'.png']);
        Img1 = imread([Image_Path,'\vfdb\','Spec',num2str(ix),'.png']);
        Img2 = imcrop(Img1,[99 50 587 534]); % Size of Crop: [xmin ymin width height]
        imwrite(Img2,[Image_Path,'\vfdb\','Spec',num2str(ix),'.png']);
        imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]
        imwrite(Img2,[Image_Path,'\vfdb\','Spec',num2str(ix),'.png']);
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
        caxis([-100,+20]);
        saveas(fig_id,[Image_Path,'\mitdb\','Spec0',num2str(ix),'.png']);
        Img1 = imread([Image_Path,'\mitdb\','Spec0',num2str(ix),'.png']);
        Img2 = imcrop(Img1,[99 50 587 534]); % Size of Crop: [xmin ymin width height]
        imwrite(Img2,[Image_Path,'\mitdb\','Spec0',num2str(ix),'.png']);
        imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]
        imwrite(Img2,[Image_Path,'\mitdb\','Spec0',num2str(ix),'.png']);
    else
        fig_id = figure(); plot(eval(['mitdb_Sig',num2str(ix)]));
        xlim([0,500]);
        saveas(fig_id,['C:\Users\shaya\Desktop\Images\Temp\','Sig',num2str(ix),'.png']);
        Img1 = imread(['C:\Users\shaya\Desktop\Images\Temp\','Sig',num2str(ix),'.png']);
        Img2 = imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]
        imwrite(Img2,[Image_Path,'\mitdb\','Sig0',num2str(ix),'.png']);
        fig_id = figure(); spectrogram(eval(['mitdb_Sig',num2str(ix)]));
        caxis([-100,+20]);
        saveas(fig_id,[Image_Path,'\mitdb\','Spec',num2str(ix),'.png']);
        Img1 = imread([Image_Path,'\mitdb\','Spec',num2str(ix),'.png']);
        Img2 = imcrop(Img1,[99 50 587 534]); % Size of Crop: [xmin ymin width height]
        imwrite(Img2,[Image_Path,'\mitdb\','Spec',num2str(ix),'.png']);
        imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]
        imwrite(Img2,[Image_Path,'\mitdb\','Spec',num2str(ix),'.png']);
    end
end

close all; clc; fclose('all');
% ------------------------------------------------------------------------