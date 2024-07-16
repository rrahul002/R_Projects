#import data
movie <- read.csv("MovieDomesticGross_Dataset.csv")
summary(movie)

#reformat
colnames(movie) <- c("Day", "Director", "Genre", "Movie", "Date", "Studio", "AdjGross", "Budget $M", "Gross", "IMDb", "MovieLens", "Overseas", "Overseas%", "Profit", "Profit%", "Runtime", "US", "Gross % US")

#filter
movie_data <- data.frame(movie$Genre, movie$Studio, movie$`Budget $M`, movie$`Gross % US`)
colnames(movie_data) <- c("Genre", "Studio", "Budget $M", "GrossUS %")
filter_genre <- movie_data$Genre == "action" | movie_data$Genre == "adventure" | movie_data$Genre == "animation" | movie_data$Genre == "comedy" | movie_data$Genre == "drama"
temp_movie_data <- movie_data[filter_genre,]
temp_movie_data$Genre <- factor(temp_movie_data$Genre)
filter_studio <- temp_movie_data$Studio == "Buena Vista Studios" | temp_movie_data$Studio == "Fox" | temp_movie_data$Studio == "Paramount Pictures" | temp_movie_data$Studio == "Sony" | temp_movie_data$Studio == "Universal" | temp_movie_data$Studio == "WB"
movie_data <- temp_movie_data[filter_studio,]
movie_data$Studio <- factor(movie_data$Studio)
summary(movie_data)

#Build Base Plot
library(ggplot2)
base <- ggplot(data = movie_data)

#Aesthetics
base + aes(x=Genre, y=`GrossUS %`) + geom_jitter(aes(color=Studio, size=`Budget $M`)) + geom_boxplot(aes(alpha=0.7))

