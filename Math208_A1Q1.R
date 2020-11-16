
#Math208 A1Q1 
# Jiachen Huo

## @knitr set_up
library(knitr)
library(here)
library(tidyverse)
library(ggplot2)

## @knitr 1a)
data(ToothGrowth)
mode(ToothGrowth)
class(ToothGrowth)

## @knitr 1b)
as_tibble(ToothGrowth)

## @knitr 1c)boxplot
ggplot(ToothGrowth, aes(x=supp,y=len,fill=supp))+
  stat_boxplot(geom="errorbar",width=0.25)+
  geom_boxplot()+ylab("Odontoblast Length")

## @knitr 1c)histogram
ggplot(ToothGrowth, aes(x=len,group=supp,fill=supp))+
  geom_histogram(aes(y=..density..),bins=25,col="black")

## @knitr 1c)density
ggplot(ToothGrowth, aes(x=len,col=supp))+
  geom_density(size=1.5)+xlab("Odontoblast Length")

## @knitr 1e)
ggplot(ToothGrowth, aes(x=dose,y=len,col=supp))+
  geom_point()+labs(x="dose",y="length")+
  geom_smooth(method = "lm",se = FALSE)

## @knitr 1f)
print(summary<-ToothGrowth %>% group_by(supp) %>% 
  summarise(tibble(mean=mean(len),median=median(len), S.D=sd(len))))

