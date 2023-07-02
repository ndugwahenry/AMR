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

amkcnn <- ddata[,c("Country","Year","Amikacin_I")]
amkcnn$Year <- as.factor(amkcnn$Year)

amkcnRes <- amkcnn[amkcnn$Amikacin_I == "Resistant",]
amkcnRestb <- amkcnRes %>% group_by(Country, Year) %>% summarise(n=n())

timeFrame=c("2004","2005","2006","2007","2008","2009","2010","2011","2012",
            "2013","2014","2015","2016","2017","2018","2019","2020","2021")

foreach(i = timeFrame, .combine = cbind,
    .packages = c("dplyr","tidyverse","mapproj","ggplot2") ) %dopar% {

a <- amkcnRestb[amkcnRestb$Year == i,]
b <- a
b$n <- as.factor(ifelse(b$n <= 8,"low",
                                  ifelse(b$n <= 65,"medium","high")))

c <- world.tbl %>% 
  left_join(b, by = c("region" = "Country"),relationship = "many-to-many")

tt <- "Amikacin resistance spread" 
ttt <- paste(tt,i)

x <- c %>% 
  ggplot(aes(long, lat, group = group)) +
  geom_map(
    aes(map_id = region),
    map = world.tbl,
    color = "gray80", fill = "gray30", linewidth = 0.1) + 
  coord_quickmap() +
  geom_polygon(aes(group = group, fill = n), color = "black") +
  scale_fill_manual(values = c("low" = "green", "medium" = "blue", "high" = "red")) +
  theme_minimal() +
  labs(
    title = ttt,
    x = "", y = "", fill = "Resistant Isolates Freq"
  ) +
  theme(legend.position = "bottom")
ggsave(filename = paste0(i, '_Amikacin.png'), x, type = "cairo", 
       width = 32.51,height = 18.29,units = "cm",dpi = 150,bg = "white")

}


