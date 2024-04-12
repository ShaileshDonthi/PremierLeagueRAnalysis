data <- read.csv('C:/Users/shail/OneDrive/Desktop/Premier_League_Player_Stat_Reduced.csv')
data$Started <- as.numeric(data$Started)
data$Goals.per.game <- as.numeric(data$Goals.per.game)

#Removing players with very few games to avoid skewing results
data <- subset(data, Started > 10)

# Summary statistics
summary(data$Started)
summary(data$Goals.per.game)

# Scatter plot to visualize relationship
plot(data$Started, data$Goals.per.game, main="Started vs Goals Per Game", xlab="Games Started", ylab="Goals Per Game", pch=19)

# Fit a linear model
model <- lm(Goals.per.game ~ Started, data = data)

# Display summary of the model
summary(model)

# Scatter plot with regression line
plot(data$Started, data$Goals.per.game, main="Regression Analysis", xlab="Games Started", ylab="Goals Per Game", pch=19)
abline(model, col="blue")

