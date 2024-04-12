library(readxl)
data <- read.csv('C:/Users/shail/OneDrive/Desktop/Premier_League_Player_Stat_Reduced.csv')
View(data)
# Creating a new factor variable 'AgeGroup' by cutting the 'Age' variable 
data$AgeGroup <- cut(data$Age, breaks=c(0, 25, 30, 35, Inf), labels=c("<25", "25-30", "31-35", ">35"))

# Performing Anova and Tukey
anova_result <- aov(Goals.per.game ~ AgeGroup, data = data)
summary(anova_result)
TukeyHSD(anova_result)

