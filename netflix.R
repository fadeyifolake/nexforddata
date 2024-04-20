library(ggplot2)
library(dplyr)



# Read the CSV file into a data frame
df <- read.csv("cleaned_data.csv")

# Define the rating categories
rating_categories <- c('TV-PG', 'TV-14', 'R', 'TV-MA', 'NR', 'PG-13', 'PG', 'TV-Y7', 'G', 'TV-G', 'UR', 'TV-Y7-FV', 'TV-Y', 'NC-17')

# Convert 'rating' column to factor with specified levels
df$rating <- factor(df$rating, levels = rating_categories)

# Plot the distribution of ratings
ggplot(df, aes(x = rating)) +
  geom_bar(fill = "skyblue") +
  labs(title = "Distribution of Ratings", x = "Rating", y = "Count") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  coord_flip() +
  theme_minimal()

