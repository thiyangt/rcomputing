library(ggplot2)
data("diamonds")
dim(diamonds) # 3.23pm
head(diamonds)
library(tidyverse)
glimpse(diamonds)

# univariate visualisation
ggplot(diamonds, aes(x=color)) + 
  geom_bar()
ggplot(diamonds, aes(x=cut)) + 
  geom_bar()

# Bi-variate visualisatio
p1 <- ggplot(diamonds, aes(x=cut, fill=color)) + 
  geom_bar()
p1 # stacked bar chart

p2 <- ggplot(diamonds, aes(x=color, fill=color)) + 
  geom_bar() + facet_wrap(~cut, scale="free") 

p2  # multiple bar chart

library(patchwork)
p1|p2
# scatterplot: price vs carat (5 min)

ggplot(diamonds, aes(x=carat, y=price,col=color)) + 
  geom_point()

ggplot(diamonds, aes(x=carat, y=price,col=clarity)) + 
  geom_point()

ggplot(diamonds, aes(x=price)) +
  geom_histogram(col="white") 

ggplot(diamonds, aes(x=price)) +
  geom_histogram(col="white")  + 
  facet_wrap(~cut, scale="free") 

ggplot(diamonds, aes(x=price, fill=cut)) +
  geom_density()  + 
  facet_wrap(~cut, scale="free")
