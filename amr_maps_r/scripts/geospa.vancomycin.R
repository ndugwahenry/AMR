#maps
library(tidyverse)
library(maps)
library(mapproj)
library(dplyr)
library(readr)


library(doParallel)
library(foreach)
cluster=makeCluster(detectCores()-1)

registerDoParallel(cluster)

world.tbl <- map_data("world") %>% as_tibble()
world.tbl

#ddata <- read_excel("2022_04_28 Vivli_Atlas_Data_Antibiotics.xlsx")
ddata <- read_csv("2023_06_15 atlas_antibiotics.csv")


ddata[sapply(ddata, is.character)] <- lapply(ddata[sapply(ddata, is.character)],
                                             as.factor)
ddata <- data.frame(ddata)

attach(ddata)

vncmycn <- ddata[,c("Country","Year","Vancomycin_I")]
vncmycn$Year <- as.factor(vncmycn$Year)

vncmycnRes <- vncmycn[vncmycn$Vancomycin_I == "Resistant",]
vncmycnRestb <- vncmycnRes %>% group_by(Year, Country) %>% summarise(n=n())

timeFrame=c("2004","2005","2006","2007","2008","2009","2010","2011","2012",
            "2013","2014","2015","2016","2017","2018","2019","2020","2021")

foreach(j = timeFrame, .combine = cbind,
    .packages = c("dplyr","tidyverse","mapproj","ggplot2") ) %dopar% {

d <- vncmycnRestb[vncmycnRestb$Year == j,]
e <- d
e$n <- as.factor(ifelse(e$n <= 8,"low",
                                  ifelse(e$n <= 65,"medium","high")))

f <- world.tbl %>% 
  left_join(e, by = c("region" = "Country"),relationship = "many-to-many")

tt <- "Vancomycin resistance spread" 
ttt <- paste(tt,j)

y <- f %>% 
  ggplot(aes(long, lat, group = group)) +
  geom_map(
    aes(map_id = region),
    map = world.tbl,
    color = "gray80", fill = "gray30", linewidth = 0.1) + 
  coord_quickmap() +
  geom_polygon(aes(group = group, fill = f$n), color = "black") +
  scale_fill_manual(values = c("low" = "green", "medium" = "blue", "high" = "red")) +
  theme_minimal() +
  labs(
    title = ttt,
    x = "", y = "", fill = "Resistant Isolates Freq"
  ) +
  theme(legend.position = "bottom")
ggsave(filename = paste0(j, '_Vancomycin.png'), y, type = "cairo", 
       width = 32.51,height = 18.29,units = "cm",dpi = 150,bg = "white")

}

