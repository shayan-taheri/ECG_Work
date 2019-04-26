%% Preparing Environment
clear all; close all; clc; fclose('all');
Image_Path = 'C:\Users\shaya\Desktop\Images';
addpath('C:\Users\shaya\Desktop\Datasets');
%% ---------- Normal: MIT-BIH Normal Sinus Rhythm Database (nsrdb) ----------

Array = {'16265','16272','16273','16420','16483', ...
    '16539','16773','16786','16795','17052','17453', ...
    '18177','18184','19088','19090','19093','19140','19830'};

for iz = 1:length(Array)
    [signal,Fs,tm]=rdsamp(char(strcat('nsrdb/',Array(iz))));
    iy = 1;
    Name = 'nsrdb';
    Temp_Sig = signal(:,1);
    for ix = 1:1000
        nsrdb_Sig = Temp_Sig((ix-1)*500+1:(ix-1)*500+500);
        data_extract(nsrdb_Sig,Name,ix,iy,iz,Image_Path);
        close all; clc; fclose('all');
    end
    [signal,Fs,tm]=rdsamp(char(strcat('nsrdb/',Array(iz))));
    iy = 2;
    Name = 'nsrdb';
    Temp_Sig = signal(:,2);
    for ix = 1:1000
        nsrdb_Sig = Temp_Sig((ix-1)*500+1:(ix-1)*500+500);
        data_extract(nsrdb_Sig,Name,ix,iy,iz,Image_Path);
        close all; clc; fclose('all');
    end
end
    
%% ---------- ST: European ST-T Database (edb) ----------

Array = {'e0103','e0104','e0105','e0106','e0107',...
    'e0108','e0110','e0111','e0112','e0113','e0114',...
    'e0115','e0116','e0118','e0119','e0121','e0122',...
    'e0123','e0124','e0125','e0126','e0127',...
    'e0129','e0133','e0136','e0139','e0147','e0148',...
    'e0151','e0154','e0155','e0159','e0161','e0162',...
    'e0163','e0166','e0170','e0202','e0203','e0204',...
    'e0205','e0206','e0207','e0208','e0210','e0211',...
    'e0212','e0213','e0302','e0303','e0304','e0305',...
    'e0306','e0403','e0404','e0405','e0406','e0408',...
    'e0409','e0410','e0411','e0413','e0415','e0417',...
    'e0418','e0501','e0509','e0515','e0601','e0602',...
    'e0603','e0604','e0605','e0606','e0607','e0609',...
    'e0610','e0611','e0612','e0613','e0614','e0615',...
    'e0704','e0801','e0808','e0817','e0818','e1301',...
    'e1302','e1304'};

%fileID = fopen('C:\Users\shaya\Desktop\Datasets\print_command.txt','w');
%for ix = 1:length(Array)
%    fprintf(fileID,['ann = wfdb.rdann(r''','C:\\Users\\shaya\\Desktop\\edb\\',char(Array(ix)),''',''atr''',')']);
%    fprintf(fileID,['\n']);    
%    fprintf(fileID,['print(ann.aux_note)\n']);
%    fprintf(fileID,['\n']);    
%end
%fclose(fileID);

%fileID = fopen('C:\Users\shaya\Desktop\Datasets\st_points.txt','w');
%for ix = 1:90
%    fprintf(fileID,['st_start_idx(1,1:5,',num2str(ix),') = ??;\n']);
%    fprintf(fileID,['st_peak_idx(1,1:5,',num2str(ix),') = ??;\n']);
%    fprintf(fileID,['st_end_idx(1,1:5,',num2str(ix),') = ??;\n']);
%    fprintf(fileID,['\n']);    
%end
%fclose(fileID);

fileID = fopen('C:\Users\shaya\Desktop\Datasets\st_data_ext.txt','w');
for ig = 1:length(Vect)
    clear data_cell;
    data_cell = Vect{ig};
    start_iter = 1;
    peak_iter = 1;
    end_iter = 1;
    clear st_start_idx, clear st_peak_idx, clear st_end_idx;
    clear Element;
    for ix = 1:length(data_cell)
        Element = char(data_cell{ix});
        if (length(Element) >= 3)
            if (Element(1:3) == '(ST')
                st_start_idx(start_iter) = ix;
                start_iter = start_iter + 1;
            end
            if (Element(1:3) == 'AST')
                st_peak_idx(peak_iter) = ix;
                peak_iter = peak_iter + 1;
            end
        end
        if (length(Element) >= 2)
            if (Element(1:2) == 'ST')
                st_end_idx(end_iter) = ix;
                end_iter = end_iter + 1;
            end
        end
    end
    if ((exist('st_start_idx') == 1) && (exist('st_end_idx') == 1))
        fprintf(fileID,['st_start_idx_',num2str(ig),' = [',num2str(st_start_idx(1:length(st_start_idx))),'];\n']);
        fprintf(fileID,['st_end_idx_',num2str(ig),' = [',num2str(st_end_idx(1:length(st_end_idx))),'];\n']);
        fprintf(fileID,['\n']);
    end
end
fclose(fileID);

st_start_idx_1 = [863  1595  2322  2974  6939];
st_end_idx_1 = [1025  1751  2491  3114  7095];

st_start_idx_2 = [971   987  6183  6194  6983  7057];
st_end_idx_2 = [1108  1115  6288  6311  7125  7152];

st_start_idx_3 = [222   275  1460  1499  2848  3004  3585  3704  4495  5375  6287];
st_end_idx_3 = [582   587  1927  1938  3084  3087  3832  3856  4795  5758  6489];

st_start_idx_4 = [776  2092  2136  2766  4164  4799  5807  6518];
st_end_idx_4 = [853  2195  2203  3107  4363  4964  6016  6725];

st_start_idx_5 = [784   799  5634  5654];
st_end_idx_5 = [1089  1099  5886  6062];

st_start_idx_6 = [2367  2392  3410  3417  4368  4400  4503  5651  5684];
st_end_idx_6 = [2542  2550  3552  3566  4492  4513  4546  5736  5752];

st_start_idx_7 = [5473  5686  5697];
st_end_idx_7 = [5508  5764  5769];

st_start_idx_8 = [1734  1793];
st_end_idx_8 = [1944  1948];

st_start_idx_9 = [484   558   939  4821  5055];
st_end_idx_9 = [772   782  1034  5088  5099];

st_start_idx_10 = [3830  4317  4326  4773  4791  5254  5266  5739  5762  6189  6205  7031  7037];
st_end_idx_10 = [3900  4413  4417  4860  4873  5363  5367  5829  5832  6267  6291  7145  7149];

st_start_idx_11 = [2101  2122  2576  2597  3966  3987  4349  4716  5124  5540];
st_end_idx_11 = [2149  2151  2731  2733  4051  4060  4395  4832  5242  5574];

st_start_idx_12 = [4795];
st_end_idx_12 = [5707];

st_start_idx_13 = [573   593  1899  1928];
st_end_idx_13 = [710   722  2029  2040];

st_start_idx_14 = [1537  3593  3800  5748  5819];
st_end_idx_14 = [1864  3734  4252  6449  6461];

st_start_idx_15 = [814  2000  2386  4460  6028  6348  6397];
st_end_idx_15 = [978  2742  2750  4851  6208  7076  7096];

st_start_idx_16 = [3887  3929];
st_end_idx_16 = [4566  4589];

st_start_idx_17 = [4341  4387];
st_end_idx_17 = [4595  4600];

st_start_idx_18 = [5115  5590  6118];
st_end_idx_18 = [5314  5747  7235];

st_start_idx_19 = [1211  3585  4933  5497  6455  7143];
st_end_idx_19 = [1565  3872  5134  6267  6706  7402];

st_start_idx_20 = [4757  5228  5996  7221];
st_end_idx_20 = [4824  5451  6063  7332];

st_start_idx_21 = [5676];
st_end_idx_21 = [6030];

st_start_idx_22 = [3478  3484  4096  4099  4473  5206  5229];
st_end_idx_22 = [3526  3541  4223  4305  4617  5380  5391];

st_start_idx_23 = [1283  1308  2233  2241  3088  3091  4398  4403];
st_end_idx_23 = [1463  1496  2437  2489  3313  3353  4575  4649];

st_start_idx_25 = [2246  2811  2917  3282  3781  5990];
st_end_idx_25 = [2300  2865  2953  3339  3824  6061];

st_start_idx_26 = [2979  3356  3922  5021];
st_end_idx_26 = [3428  4120  5083  5294];

st_start_idx_27 = [565  1621  1695  2543  5869];
st_end_idx_27 = [765  1778  1780  2823  5986];

st_start_idx_28 = [881  1312  2703  3393];
st_end_idx_28 = [1067  1427  2883  4042];

st_start_idx_29 = [3312  4748];
st_end_idx_29 = [3550  4955];

st_start_idx_30 = [1869];
st_end_idx_30 = [2168];

st_start_idx_32 = [3489];
st_end_idx_32 = [4621];

st_start_idx_33 = [7052];
st_end_idx_33 = [8877];

st_start_idx_34 = [1819];
st_end_idx_34 = [10000];

st_start_idx_35 = [2433];
st_end_idx_35 = [2480];

st_start_idx_36 = [760   793  3024  5253];
st_end_idx_36 = [999  1278  3058  6080];

st_start_idx_37 = [6337  6378];
st_end_idx_37 = [6542  6579];

st_start_idx_38 = [1095  1183  2476  2594  2948  3507  8629  8836];
st_end_idx_38 = [1834  1885  2819  3120  3791  3804  9052  9445];

st_start_idx_39 = [4309  4378  6694  6733];
st_end_idx_39 = [5354  5396  8410  8414];

st_start_idx_40 = [1845  4402  4908];
st_end_idx_40 = [2420  5056  5229];

st_start_idx_41 = [7691  7859];
st_end_idx_41 = [9064  9609];

st_start_idx_42 = [471   823  6076  6079  7965  7984];
st_end_idx_42 = [2180  2209  6374  6549  8864  9250];

st_start_idx_43 = [2189  2433  3077  4397  4437  6353];
st_end_idx_43 = [2306  2488  3754  5054  5105  6619];

st_start_idx_44 = [1047  6364  8306];
st_end_idx_44 = [1359  6520  8678];

st_start_idx_45 = [5242  5272];
st_end_idx_45 = [6943  6968];

st_start_idx_46 = [1968  7109];
st_end_idx_46 = [2637  9175];

st_start_idx_47 = [5082  5163];
st_end_idx_47 = [5615  5657];

st_start_idx_48 = [6530  6791  9414];
st_end_idx_48 = [6661   8806  10502];

st_start_idx_49 = [1753  1994  2305  8479  8840];
st_end_idx_49 = [1842  2153  2384  8727  8907];

st_start_idx_50 = [2399];
st_end_idx_50 = [3662];

st_start_idx_51 = [2716];
st_end_idx_51 = [2897];

st_start_idx_52 = [760  1008];
st_end_idx_52 = [2788  4402];

st_start_idx_53 = [3003  3200  6822];
st_end_idx_53 = [4555  5148  7287];

st_start_idx_54 = [2879  3101  3194  4525  5591];
st_end_idx_54 = [3154  3225  3265  4607  5693];

st_start_idx_55 = [2713  2719  2989  5505  6143];
st_end_idx_55 = [2889  3133  3195  5605  6283];

st_start_idx_56 = [1005   1431   5267   6632   7061];
st_end_idx_56 = [1098  2190  5440  7970  8717];

st_start_idx_57 = [2294  6012  6130];
st_end_idx_57 = [3063  8549  8678];

st_start_idx_58 = [5770  5786];
st_end_idx_58 = [6654  6762];

st_start_idx_60 = [1093  1737];
st_end_idx_60 = [1229  1828];

st_start_idx_61 = [2174  2295];
st_end_idx_61 = [2487  3052];

st_start_idx_62 = [6208  6353];
st_end_idx_62 = [6835  7064];

st_start_idx_63 = [2804   3181  10537];
st_end_idx_63 = [6935   7936  11527];

st_start_idx_64 = [1673  2456  5467];
st_end_idx_64 = [1720  2564  6728];

st_start_idx_65 = [3752  3775  3993  4544  4562  7038  7063];
st_end_idx_65 = [3895  3904  4193  4684  5058  7523  7546];

st_start_idx_66 = [793  1839  2273  2938  3499  4467];
st_end_idx_66 = [1766  1984  2734  3441  3696  4589];

st_start_idx_68 = [1543   1573   4741   4745   9984  10000];
st_end_idx_68 = [1775   1811   4881   4938  10123  10143];

st_start_idx_69 = [1009  5736];
st_end_idx_69 = [1065  5804];

st_start_idx_70 = [3014  3018  4592  4805  4868  6629  7328  8295];
st_end_idx_70 = [3857  3910  4732  4979  5284  6801  8469  8919];

st_start_idx_71 = [365   374  1553  1571  1904  1910  6408  7002];
st_end_idx_71 = [724  1080  1609  1641  1980  1984  7138  7196];

st_start_idx_72 = [173   849   861  1150  1167  1306  1875  1942  2653  2750  3310  3328  4222  4985  4993  5664  5692  6026  6667  7278];
st_end_idx_72 = [325   942  1054  1198  1249  1433  2001  2036  2845  2848  3510  3660  4363  5077  5119  5767  5843  6278  6803  7383];

st_start_idx_73 = [2034];
st_end_idx_73 = [4837];

st_start_idx_74 = [5440  5674];
st_end_idx_74 = [7512  7641];

st_start_idx_75 = [961   964  3368  3372  6102  6525];
st_end_idx_75 = [2116   2167   4593   4754   9820  10143];

st_start_idx_76 = [954  1393  8874  8884];
st_end_idx_76 = [1840  3079  8986  9192];

st_start_idx_77 = [3935  4449  4737];
st_end_idx_77 = [4547  4750  5794];

st_start_idx_79 = [334   885  4354];
st_end_idx_79 = [652  1825  4631];

st_start_idx_80 = [1843  1847  2000  2255  3352  4194  5856  6786  7659];
st_end_idx_80 = [1973  2004  2130  3273  3461  4453  6017  6915  7809];

st_start_idx_81 = [473   1944   2036   2708   3401   8225   8415   8894   9763   9829  10195  10218];
st_end_idx_81 = [1635   2561   3284   7346   8136   8711   9118   9204   9842   9951  10484  10547];

st_start_idx_82 = [6089];
st_end_idx_82 = [6184];

st_start_idx_83 = [944  3456];
st_end_idx_83 = [1772  5810];

st_start_idx_84 = [1116  6094];
st_end_idx_84 = [1756  6435];

st_start_idx_85 = [1376   1460   6316   8586   8597  10220];
st_end_idx_85 = [1668   1707   6568   8676   8724  10360];

st_start_idx_86 = [5103  5548];
st_end_idx_86 = [5291  5931];

st_start_idx_87 = [5523  5768  7214];
st_end_idx_87 = [5730  6086  9587];

st_start_idx_88 = [4811  4987];
st_end_idx_88 = [4901  6100];

st_start_idx_89 = [832   947  3168  3305];
st_end_idx_89 = [1084  1165  3387  3636];

st_start_idx_90 = [2054  2414];
st_end_idx_90 = [3754  3839];

for iz = 86:length(Array)
    if ((iz ~= 24) && (iz ~= 31) && (iz ~= 59) && (iz ~= 67) && (iz ~= 78))
        [signal,Fs,tm]=rdsamp(char(strcat('edb/',Array(iz))));
        iy = 1;
        Name = 'edb';
        edb_Sig = signal(:,1);        
        for ix = 1:length(eval(['st_start_idx_',num2str(iz)]))
            data_extract(eval(['st_start_idx_',num2str(iz),'(ix)']),eval(['st_end_idx_',num2str(iz),'(ix)']),edb_Sig(eval(['st_start_idx_',num2str(iz),'(ix)']):eval(['st_end_idx_',num2str(iz),'(ix)'])),Name,ix,iy,iz,Image_Path);
            close all; clc; fclose('all');
        end
        iy = 2;
        Name = 'edb';
        Temp_Sig = signal(:,2);
        for ix = 1:length(eval(['st_start_idx_',num2str(iz)]))
            data_extract(eval(['st_start_idx_',num2str(iz),'(ix)']),eval(['st_end_idx_',num2str(iz),'(ix)']),edb_Sig(eval(['st_start_idx_',num2str(iz),'(ix)']):eval(['st_end_idx_',num2str(iz),'(ix)'])),Name,ix,iy,iz,Image_Path);
            close all; clc; fclose('all');
        end
    end
end

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