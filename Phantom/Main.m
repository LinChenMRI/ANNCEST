addpath('toolbox');
ini;
load PCrphantom.mat
Offset = Result.Method.MT_Offsets_NoM0/(42.58*3);

M0image = image(:,:,Offset>20);
M0image = M0image(:,:,end);

NormalizedImage = image./repmat(M0image+eps,[1,1,size(image,3)]);
NormalizedImage = NormalizedImage .* repmat(Mask,[1,1,size(NormalizedImage,3)]);

NormalizedImage(:,:,Offset>20) = [];
Offset(Offset>20) = [];
Freq = [linspace(0.5,4,50)];

fBmap = zeros(size(Mask));
kBAmap = zeros(size(Mask));
B0map = zeros(size(Mask));
tic

for xindex = 1:1:size(Mask,1)
    for yindex = 1:1:size(Mask,2)
        if Mask(xindex,yindex) == 1
            Saturation_inter = smooth(squeeze(NormalizedImage(xindex,yindex,:)));
            B0map(xindex,yindex) = B0_NN_Input50_Layer7_B0_20181104111756(Saturation_inter);
            fBmap(xindex,yindex) = fb_NN_Input50_Layer7_fb_20181104111756(Saturation_inter);
            kBAmap(xindex,yindex) = kba_NN_Input50_Layer7_kba_20181104111756(Saturation_inter)*2.19;
        end
    end
end
toc

fBmap(fBmap<0) =0;
fBmap(isnan(fBmap)) =0;
kBAmap(isnan(kBAmap)) =0;


figure; hold on
imshow(fBmap.*Mask,[], 'InitialMagnification','fit');caxis([0,70]);
CalculateMeanAndSTD(fBmap,Mask);
set (gcf,'Position',[100,100,500*1.3,400*1.3], 'color','w');
mycolormap(1);mycolorbar;

figure; hold on
imshow(kBAmap.*Mask,[], 'InitialMagnification','fit');caxis([0,450]);
CalculateMeanAndSTD(kBAmap,Mask);
set (gcf,'Position',[100,100,500*1.3,400*1.3], 'color','w');
mycolormap(1);mycolorbar;

figure; 
imshow((-B0map).*Mask,[], 'InitialMagnification','fit');caxis([-0.55,0.55]);
set (gcf,'Position',[100,100,500*1.3,400*1.3], 'color','w');
mycolormap(1);mycolorbar;

