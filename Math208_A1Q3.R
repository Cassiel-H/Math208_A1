

#Math208 A1Q3

## @knitr set_up
library(knitr)
library(here)
library(tidyverse)


## @knitr given
shopping_list <- list( Grocery = list(
  Dairy = c("Milk","Cheese"),
  Meat = c("Chicken","Sausage","Bacon"), Spices = c("Cinnamon")
),
Pharmacy = c("Soap","Toothpaste","Toilet Paper") )

shopping_list

## @knitr 3a)
shopping_list$Pharmacy 
shopping_list[[1]][[3]] 
shopping_list$Grocery[2][1]

#shopping_list[1][[2]] 

## @knitr 3b)
shopping_list[[2]]
shopping_list$Pharmacy
shopping_list[[1]][[2]][[2]]
