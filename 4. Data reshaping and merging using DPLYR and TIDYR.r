install.packages("tidyverse")

library(tidyr)
library(dplyr)

install.packages("nycflights13")
library(nycflights13)


View(flights)

filter(flights, month==1, dep_time<=600)

arrange(flights,desc(arr_delay))

select(flights,year,month,day)


new_flight<-select(flights, year, month, distance, arr_time,arr_delay,dep_delay)
mutate(new_flight, speed=distance/arr_time * 60, gain=arr_delay-dep_delay)

transmute(flights,gain=arr_delay-dep_delay, hours=arr_time/60,gain_per_hour=gain/hours )

summarize(flights, delay=mean(dep_delay,na.rm=TRUE))

table4a
gather(table4a,key=year,value = cases, "1999","2000")

table2
spread(table2,key=type,value=count)


table3
separate(table3, rate, into = c("cases","population"))


table5
unite(table5,new,century,year)
