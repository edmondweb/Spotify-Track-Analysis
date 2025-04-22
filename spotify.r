setwd("C:/Users/user/Desktop/Projects/R Project/Spotify Track Analysis")
getwd()

# Load necessary libraries
library(tidyverse)
library(ggplot2)
library(dplyr)
library(ggplot2)
library(ggthemes)

data <- read.csv("Spotify Features.csv")
# Check the structure of the data
str(data)
