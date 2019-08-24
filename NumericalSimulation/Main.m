addpath('toolbox');
ini

load A05_PCrSimulatedData.mat

fbmap_NNF = zeros(size(fbmap));
kBAmap_NNF = zeros(size(kBAmap));
B0map_NNF = zeros(size(B0map));
tic
count = 1;
for x = 1:1:size(fbmap,1)
    for y = 1:1:size(fbmap,2)
        if Mask(x,y) == 1
            selectednum = 1:1:length(Freq);
            fbmap_NNF(x,y) = fb_NN_Input50_Layer7_fb_20181104111756(DataInput(selectednum,count));
            kBAmap_NNF(x,y) = kba_NN_Input50_Layer7_kba_20181104111756(DataInput(selectednum,count))*2.19;
            B0map_NNF(x,y) =  B0_NN_Input50_Layer7_B0_20181104111756(DataInput(selectednum,count));
            count = count+1;
        end 
    end
end
Rtime = toc;

figure;subplot(1,2,1)
imshow(fbmap,[],'InitialMagnification','fit');mycolorbar;mycolormap;caxis([0,70]);title('fbMap ground truth','FontSize',20);
CalculateMeanAndSTD(fbmap,Mask)
subplot(1,2,2)
imshow(fbmap_NNF,[],'InitialMagnification','fit');mycolorbar;mycolormap;caxis([0,70]);title(['Time: ',num2str(Rtime),'s'],'FontSize',20);
set (gcf,'Position',[100 191 1271 585], 'color','w');
CalculateMeanAndSTD(fbmap_NNF,Mask)

figure;subplot(1,2,1)
imshow(kBAmap,[],'InitialMagnification','fit');mycolorbar;mycolormap;caxis([00,450]);title('kBAmap ground truth (Hz)','FontSize',20);
set (gcf,'Position',[100 191 1271 585], 'color','w');
CalculateMeanAndSTD(kBAmap.*Mask,Mask)
subplot(1,2,2)
imshow(kBAmap_NNF,[],'InitialMagnification','fit');mycolorbar;mycolormap;caxis([00,450]);title(['Time: ',num2str(Rtime),'s'],'FontSize',20);
set (gcf,'Position',[100 191 1271 585], 'color','w');
CalculateMeanAndSTD(kBAmap_NNF,Mask)

figure;subplot(1,2,1)
imshow(B0map ,[],'InitialMagnification','fit');mycolorbar;mycolormap;caxis([-0.4,0.4]);title('B0map ground truth (ppm)','FontSize',20);
set (gcf,'Position',[100 191 1271 585], 'color','w'); 
subplot(1,2,2)
imshow(B0map_NNF ,[],'InitialMagnification','fit');mycolorbar;mycolormap;caxis([-0.4,0.4]);title(['Time: ',num2str(Rtime),'s'],'FontSize',20);
set (gcf,'Position',[100 191 1271 585], 'color','w');
