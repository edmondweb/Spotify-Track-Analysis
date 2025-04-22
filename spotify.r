setwd("C:/Users/user/Desktop/Projects/R Project/Spotify Track Analysis")
getwd()

# Load necessary libraries
library(tidyverse)
library(ggplot2)
library(dplyr)
library(ggthemes)

data <- read.csv("Spotify Features.csv")
# Check the structure of the data
str(data)

head(data)

# Check for missing values
sum(is.na(data))

# Check for duplicates
sum(duplicated(data))


#Top 10 Most Popular Tracks
data %>%
  arrange(desc(popularity)) %>%
  slice_head(n = 5) %>%
  ggplot(aes(x= reorder (track_name, popularity), y = popularity, fill = artist)) +
  geom_col() +
  coord_flip() +
  labs(title = "Top 10 Most Popular Tracks", x = "Track", y = "Popularity") +
  theme_minimal()


# Track Duration vs Popularity
ggplot(data, aes(x = duration_min, y = popularity)) +
  geom_point(alpha = 0.6) +
  geom_smooth(method = "lm", color = "red") +
  labs(title = "Track Duration vs. Popularity", x = "Duration (minutes)", y = "Popularity") +
  theme_classic()

# Correlation between track duration and popularity
cor(data$duration_min, data$popularity)

plot(data$duration_min, data$popularity, main = "Track Duration vs. Popularity", 
  xlab = "Duration (minutes)", ylab = "Popularity")

# Artist with the highest average track popularity
ggplot(data, aes(x = popularity)) + 
  geom_histogram(binwidth = 5, fill ="steelblue", color = "white") +
  theme_minimal() +
  labs(title = "Distribution of Track Popularity", x = "Popularity", y = "Count")
