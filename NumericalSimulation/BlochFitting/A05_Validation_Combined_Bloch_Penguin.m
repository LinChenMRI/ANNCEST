ini
load A05_PCrSimulatedData.mat
fbmap_Bloch_line = zeros(1,length(DataInput));
kbamap_Bloch_line = zeros(1,length(DataInput));
B0_Bloch_line = zeros(1,length(DataInput));
tic
parfor n = 1:1:length(DataInput)
    [fbmap_Bloch_line(n),kbamap_Bloch_line(n),B0_Bloch_line(n)] = BlochFitting(Freq,DataInput(:,n),tp);
    disp(['Reconstructing: ',num2str(n/length(DataInput)*100),'%']);
end
Rtime = toc;
fbmap_Bloch = zeros(size(fbmap));
kbamap_Bloch = zeros(size(fbmap));
B0map_Bloch = zeros(size(fbmap));
count = 1;
for x = 1:1:size(fbmap,1)
    for y = 1:1:size(fbmap,2)
        if Mask(x,y) == 1
             fbmap_Bloch(x,y) = fbmap_Bloch_line(count);
             kbamap_Bloch(x,y) = kbamap_Bloch_line(count);
             B0map_Bloch(x,y) = B0_Bloch_line(count);
             count = count+1;
        end 
    end
end
save('/g5/kirby/lchen134/DeepLearning/Simulation/A05_BlochFittingResult_noise0.0015_20181105105636.mat','Rtime','fbmap_Bloch','fbmap_Bloch_line','kbamap_Bloch','B0map_Bloch','kbamap_Bloch_line','B0_Bloch_line');