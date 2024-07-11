#First initialize LifeExpectancy.R
#then proceed below

fertility_1960 <- fertility[fertility$Year == 1960,]
fertility_2013 <- fertility[fertility$Year == 2013,]

#create the life_expectancy matrices
life_expect_1960 <- data.frame(cbind(Country.Code = Country_Code, Life.Expectancy = as.numeric(as.character(Life_Expectancy_At_Birth_1960))))
life_expect_2013 <- data.frame(cbind(Country.Code = Country_Code, Life.Expectancy = as.numeric(as.character(Life_Expectancy_At_Birth_2013))))

#Merge the data sets
Merged_1960 <- merge(fertility_1960, life_expect_1960, by.x = "Country.Code", by.y = "Country.Code")
Merged_2013 <- merge(fertility_2013, life_expect_2013, by.x = "Country.Code", by.y = "Country.Code")

#Delete Year Column
Merged_1960$Year <- NULL
Merged_2013$Year <- NULL

#Fix LifeExpectancy
Merged_1960$Life.Expectancy <- as.numeric(as.character(Merged_1960$Life.Expectancy))
Merged_2013$Life.Expectancy <- as.numeric(as.character(Merged_2013$Life.Expectancy))

#Plot
library(ggplot2)
qplot(data=Merged_1960, x=Fertility.Rate, y=Life.Expectancy, color=Region, size=I(3), shape=I(19), alpha=I(0.6), main="World Life Expectancy vs. Fertility Rate in 1960")
qplot(data=Merged_2013, x=Fertility.Rate, y=Life.Expectancy, color=Region, size=I(3), shape=I(19), alpha=I(0.6), main="World Life Expectancy vs. Fertility Rate in 2013")

