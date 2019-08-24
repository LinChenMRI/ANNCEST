function time_now = timelabel() 
% used to generate time label
% By Lin Chen 2017-4-11


date_now=datestr(now);
date_hour=num2str(hour(date_now));
date_minute=num2str(minute(date_now));
date_second=num2str(second(date_now));
time_now = ['_',date,'_',date_hour,'_',date_minute,'_',date_second,'_',num2str(floor(rand(1)*100000))];

end