# Loading the tidyverse package
library(tidyverse)
# Read in data in a csv file 
gapminder_1997 <- read_csv(file = "gapminder_1997.csv")
fadd_two <- 2+2
my_name <- "Dasol"
my_name
Hello <- "Thank you"
Hello
Apple <- "Morning"
Apple
apple
rFunToRun <- "Happy"
Hello <- "Hi"
Hello
(filter)


read_csv()
Sys.Date()
getwd()
?read_csv()



sum(5,6,9)
mean(1,4,6,7,)
mean(1,2,3,4)



?round()
round(3.12456,3)




?excel()
?read_excel()
read_excelfile()

library("readxl")
library(readxl)



# make a plot
# Using ggplot to make a plot

ggplot(data=gapminder_1997) +
  aes(x=gdpPercap, y=lifeExp) + 
  labs(x="GDP Per Capital", y="Life Expectancy") +
  geom_point()+
  labs(title="Do people in wealthy countries live longer?")+
  aes(color = continent) +
  scale_color_brewer(palette="Set 1")+
  aes(size = pop/1000000)+
  labs(size = "Poplulation (in millions)") +
  theme_minimal()




# ggplot related hints
# labs = naming
# aes = x y axis 
#ggplot = plot background 
# + to add variables
# colnames(insert file name and it will gives you the name of each column)
# what type of plot = geom_plottype that you want 
#  scale_color_brewer(palette="Set 1") if I want to change the color scheme
# list all color palettes
RColorBrewer::display.brewer.all()


#Load in full gapminder data
gapminder_data <- read_csv("gapminder_data.csv")
dim(gapminder_data)
head(gapminder_data)
glimpse(gapminder_data)
# glimpse(gapminder_data) summary of data

ggplot(data=gapminder_data)+
  aes(x=year, y= lifeExp, color = continent,
      group=country)+
  geom_line()
# geome line= line plot
# from aes you can add group to make some grouping for the variables


#Plot lifeExp versus pop >> line plot
ggplot(data=gapminder_data)+
  aes(x=year, y=pop, color=continent, group=country)+
  geom_line(alpha=0.5)+
  labs(size = "Poplulation (in millions)")+
  labs(x="Life Expectancy", y="Population")+
  theme_classic()
#geom_line alpha= chaning transparency

#Boxplot of distribution of life expectancy per continent
ggplot(data=gapminder_data)+
  aes(x= continent, y= lifeExp)+
  geom_boxplot()
  
# Violin plot of distribution of life expectancy per continent
ggplot(data=gapminder_data)+
  aes(x= continent, y= lifeExp)+
  geom_violin()+
  geom_point(alpha=0.3)+
  geom_jitter( width= 0.1, alpha=0.2)
  
# geom_jitter() adding noise 
# oredring geom is also possible 
