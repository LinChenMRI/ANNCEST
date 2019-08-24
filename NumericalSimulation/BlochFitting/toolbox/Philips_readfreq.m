function freq = Philips_readfreq(name)

fid = fopen (name);
freq = [];
while 1
    Text = fgetl(fid);
    if ~ischar(Text), break, end
    if contains(Text,'Freq')
        index = strfind(Text,':');
        freq = [freq;sscanf(Text(index+1:end),'%f')'];
    end
end

fclose(fid);
end


