addpath('toolbox'); ini; warning off
datadir =cd;

% recname = 'linchen_WIP_TSE_dynamic_18_1';
% freqname = 'legrp2.txt';
% image = Philips_readrec([datadir,filesep,recname]);
% image = ImageAlign(image);
% param = Philips_readpar([datadir,filesep,recname]);
% Freq = Philips_readfreq([datadir,filesep,freqname])/(42.58*3);
% Freq = Freq(1:size(image,3));
% load Mask.mat
% save('Data','image','Freq','Mask');

load Data

M0image = image(:,:,Freq>100);
M0image = M0image(:,:,end);
NormalizeImage = image./repmat(M0image+eps,[1,1,size(image,3)]);
NormalizeImage(:,:,Freq>20) = [];
Freq(Freq>20) = [];

%-------------reduce frequence offset------------%
% % randindex = randperm(size(NormalizeImage,3),29);
% % randindex = unique([1,sort(randindex),size(NormalizeImage,3)]);
% load randindex.mat
% Freq = Freq(randindex);
% NormalizeImage = NormalizeImage(:,:,randindex);
%---------------------------------------------------%

Freq_equal = linspace(1.3,3.5,50);
fBMap = zeros(size(Mask));
B1Map = zeros(size(Mask));
B0Map = zeros(size(Mask));
ExchangeRateMap = zeros(size(Mask));

tic
count = 1;
for xindex = 1:1:size(Mask,1)
    for yindex = 1:1:size(Mask,2)
        if Mask(xindex,yindex) == 1
            Saturation_origianl  = squeeze(NormalizeImage(xindex,yindex,:));
            Saturation_origianl = interp1(Freq,Saturation_origianl,Freq_equal,'spline')';
            fBMap(xindex,yindex) = HL_fb_NN_Input50_Layer7_fb_20181009182120(Saturation_origianl);
            B1Map(xindex,yindex) = HL_B1_NN_Input50_Layer7_B1_20181001162342(Saturation_origianl);
            B0Map(xindex,yindex) = HL_B0_NN_Input50_Layer7_B0_20181001162342(Saturation_origianl);
            ExchangeRateMap(xindex,yindex) = HL_kba_NN_Input50_Layer7_kba_20181003122806(Saturation_origianl);
        end
    end
end
toc
ConcentrationMap = medfilt2(fBMap.*Mask,[2,2]);

figure;subplot(2,2,1)
imshow((ConcentrationMap),[],'InitialMagnification','fit');mycolormap;mycolorbar; title('Concentration')
caxis([0,40]);

subplot(2,2,2)
imshow(B1Map,[],'InitialMagnification','fit');mycolormap;mycolorbar; title('B1')
caxis([0.4,0.7]);

subplot(2,2,3)
imshow(-(B0Map-0.08).*Mask,[],'InitialMagnification','fit');mycolormap;mycolorbar; title('B0')
caxis([-0.4,0.4]);

subplot(2,2,4)
imshow((ExchangeRateMap).*Mask,[],'InitialMagnification','fit');mycolormap;mycolorbar; title('Exchange rate')
caxis([0,250]);
set (gcf,'Position',[453 156 908 683], 'color','w');