
#Math208 A1Q2

## @knitr set_up
library(knitr)
library(here)
library(tidyverse)
library(ggplot2)

## @knitr 2a)
abalone<-read.csv("https://archive.ics.uci.edu/ml/machine-learning-databases/abalone/abalone.data")
abalone_tbl<-as_tibble(abalone)
 
## @knitr 2b)
names(abalone_tbl)<-c("Sex","Length","Diameter","Height","Whole_weight","shucked_weight",
                   "Viscera_weight","Shell_weight","rings")

## @knitr 2c)
print(abalone_tbl<-abalone_tbl %>% mutate(Radius=Diameter/2))


## @knitr 2d)
print(abalone_rings<-abalone_tbl %>%group_by(Sex) %>%
  summarise(tibble(Max=max(rings), Min=min(rings))))

## @knitr 2e)
ggplot(abalone_tbl, aes(x=Whole_weight,y=rings,col=Sex))+
  geom_point()+labs(x="Whole weight",y="rings")+
  geom_smooth(method = "lm",se = FALSE)+
  facet_grid(rows = vars(Sex))

ggplot(abalone_tbl, aes(x=Whole_weight,y=rings,col=Sex))+
  geom_point()+labs(x="Whole weight",y="rings")+
  geom_smooth(method = "lm",se = FALSE)
