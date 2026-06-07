library(tidyverse) #readr
# library(readr)

# Import data

data <- read_csv("Book1.csv")
data
View(data)

library(readr)
Book1 <- read_csv("Book1.csv")
View(Book1)

# Project folder (l2ucl) -> "Book1.csv"

# Project folder (l2ucl) -> datanew folder -> "data2.csv"

col <- read_csv("datanew/col.csv")
col
View(col)

# Export data
data("iris")
iris
view(iris)
?iris

write_csv(iris, file="irisdf.csv")


penguins
head(penguins)

# Project folder (l2ucl) -> datanew folder ->
write_csv(penguins, file="datanew/penguins.csv")


## Membership Operator

x <- 1:10 
y <- 1:3

x %in% y

y %in% x


## Factors

ch <- c("A", "A", "A", "C", "B")
ch

fc <- factor( c("A", "A", "A", "C", "B"))
fc


grade_factor_vctr <- 
  factor(c("A", "D", "A", "C", "B"),
         , 
         levels = c("A", "B", "C", "D", "E"))
grade_factor_vctr



grade_factor_vctr[2] <- "E" 
grade_factor_vctr


grade_factor_vctr[3] <- "A+" 
grade_factor_vctr


## Section 7.6 pipe operator

# . 
# |> (base operator)
# %>% (magrittr package pipe operator)




mean(1:3)
1:3 |> mean()

round(mean(1:100), 1)




1:100 |> mean() |> round(1)

1:100  %>% mean() %>% round(1)


## Exercise

id <- 1:4
maths <- c("A", "A", "B", "B")
phy <- c("A", "A", "B+", "B")
che <- c("A", "C", "C", "B")


tw <- tibble(id, maths, phy, che)
tw

# id
# subject
# grade (3.39)



pivot_longer(tw, 2:4, 
             names_to = "subject",
             values_to = "grade")

tw |>
pivot_longer( 2:4, 
             names_to = "subject",
             values_to = "grade")



####################

id <- 1:4
maths <- c("A", "A", "B", "B")
phy <- c("A", "A", "B+", "B")
che <- c("A", "C", "C", "B")


tw <- tibble(id, maths, phy, che)
tw


tw |> unite("Marks", c("maths", "phy", "che"),
            sep="-")




















