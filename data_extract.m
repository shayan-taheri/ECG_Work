function data_extract(Pstart,Pend,Temp_Sig,Name,ix,iy,iz,Image_Path)
    fig_id = figure(); plot(Pstart:Pend,Temp_Sig);
    xlim([Pstart,Pend]);
    saveas(fig_id,['C:\Users\shaya\Desktop\Images\Temp\Rec',num2str(iz),'Data',num2str(iy),'','Sig0',num2str(ix),'.png']);
    Img1 = imread(['C:\Users\shaya\Desktop\Images\Temp\Rec',num2str(iz),'Data',num2str(iy),'Sig0',num2str(ix),'.png']);
    Img2 = imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]
    imwrite(Img2,[Image_Path,'\',Name,'\Rec',num2str(iz),'Data',num2str(iy)','Sig0',num2str(ix),'.png']);
    fig_id = figure(); spectrogram(Temp_Sig);
    caxis([-100,+20]);
    saveas(fig_id,[Image_Path,'\',Name,'\Rec',num2str(iz),'Data',num2str(iy)','Spec0',num2str(ix),'.png']);
    Img1 = imread([Image_Path,'\',Name,'\Rec',num2str(iz),'Data',num2str(iy)','Spec0',num2str(ix),'.png']);
    Img2 = imcrop(Img1,[99 50 587 534]); % Size of Crop: [xmin ymin width height]
    imwrite(Img2,[Image_Path,'\',Name,'\Rec',num2str(iz),'Data',num2str(iy)','Spec0',num2str(ix),'.png']);
    imcrop(Img1,[115 50 677 533]); % Size of Crop: [xmin ymin width height]
    imwrite(Img2,[Image_Path,'\',Name,'\Rec',num2str(iz),'Data',num2str(iy)','Spec0',num2str(ix),'.png']);
end