## how have the number of 2-day snowfall events changed over time?
## Becky Bolinger, 2023

library(RcppRoll)
library(ggplot2)

# open CSV file for a station, read in variables
var <- read.csv('daily_snowfall_051121.csv', header=TRUE, stringsAsFactors=FALSE)
attach(var)

syr <- substr(Date,1,4)
years <- seq(1951,2020,1)

var[var == "M"] <- 0.0;
var[var == "T"] <- 0.0;

var$snowfall = as.numeric(var$snowfall)

# calculate 2-day snowfall accumulations, both amounts and number of events over 3 inches.
accum <- data.frame(c2=RcppRoll::roll_sum(var$snowfall,2, fill=NA), c3=RcppRoll::roll_sum(var$snowfall,3, fill=NA))
var1 <- data.frame(syr, var$snowfall, accum$c2)

max_yrs <- array(data=NA, dim=length(years))
n_events_yrs <- max_yrs ## number of events in a year greater than 3 inches

for (i in 1:length(years)) {
	tmp <- accum$c2[syr == years[i]]
	
	max_yrs[i] = max(tmp, na.rm=TRUE)
	n_events_yrs[i] = length(tmp[tmp > 3])

}

# output variables into a data frame
df <- data.frame(years,max_yrs,n_events_yrs)

# plot data on graph and save to a file
# change filename and title to current station
ggp <- ggplot(df)  + 
  geom_bar(aes(x=years, y=max_yrs),stat="identity", fill="deepskyblue3",colour="darkorchid4")+
  geom_line(aes(x=years, y=n_events_yrs),stat="identity",color="black",size=2)+
  labs(title= "2-Day Snow Events in Burlington",
       x="Year",y="Max Event (inches)")+
  scale_y_continuous(sec.axis=sec_axis(~.*1,name="Number of Events > 3 inches"))
ggp

ggsave('burl_snow.pdf', device = 'pdf', width=3400, height=1000, units="px", dpi=300)
