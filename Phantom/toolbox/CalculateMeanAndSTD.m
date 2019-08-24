function CalculateMeanAndSTD(fBmap,Mask)
hold on
[Mask_separate,region] = FindMask(Mask,0.2);

for n = 1:1:length(Mask_separate.Image)
    Mask_temp = Mask_separate.Image{n};
    fBmap_temp = fBmap.*Mask_temp;  
    fBmap_temp = fBmap_temp (:);
    
    Mask_temp = Mask_temp(:);
    fBmap_temp(Mask_temp ==0) =[];
    fBmap_temp(fBmap_temp ==0) =[];

    fb_mean(n) = sum(fBmap_temp)/sum(Mask_temp(:));
    fb_std(n) = std(fBmap_temp,1);
end

for n=1:1:size(region,1)
    index = region(n).Centroid;
    colormap_temp = abs([1 0.5 0] - fb_mean(n)/(max(fBmap(:))-mean(fBmap(:))));
    colormap_temp(colormap_temp>1) = 1;
    colormap_temp(colormap_temp<0) = 0;
    if fb_mean(n)>0
    text (index(1)-length(fBmap)/12,index(2)-round(length(fBmap)/30),[num2str(fb_mean(n),4)],'color',colormap_temp,'Fontsize',13,'FontWeight','b');
    end
    if fb_std(n)>0.01
    text (index(1)-round(length(fBmap)/15),index(2)+round(length(fBmap)/30),[num2str(fb_std(n),3)],'color',colormap_temp,'Fontsize',13,'FontWeight','b');
    end
end
hold off
end



function [CC,stats] = FindMask(mask_image,threshold)
% To find the mask of every tubes
% By Lin Chen 2015-10-13

mask_image = abs(mask_image);
mask_image = mask_image/max(mask_image(:));
maskmap = im2bw(mask_image,threshold);
% figure;imshow(maskmap,[],'InitialMagnification','fit');

CC = bwconncomp(maskmap);
[B,L] = bwboundaries(maskmap,4); 
stats = regionprops(L,'Area','Centroid');

% for n=1:1:size(stats,1)
%     index = stats(n).Centroid;
%     text (index(1)-3,index(2),num2str(n),'color','r','Fontsize',30);
% end
% 
for n = 1:1:CC.NumObjects
    image = zeros(CC.ImageSize);
    image(CC.PixelIdxList{n}) = 1;
    CC.Image{n} = image;
    CC.Label =  bwlabel(maskmap,4);
end
end