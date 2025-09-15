install.packages("ggplot2")
library("ggplot2")

data <- data.frame(
  category = c("A","B","C","D"),
  value = c (23,17,33,23),
  time = 1:4,
  score = c(80,90,70,85)
)

ggplot(data,aes(x=time,y=score))+
geom_line(colour="blue")+geom_point()

ggplot(data,aes(x = score , y =time )) + 
  geom_point()

ggplot(data,aes(x = score , y = value)) + 
  geom_bar(stat="identitiy", fill="red")


data <- data.frame(
  hours =c(1,2,3,4,5),
  marks = c(50,55,60,68,80)
)

ggplot(data,aes(x = hours, y = marks)) +
  geom_bar(stat = "identity", fill= "steelblue")


score <- data.frame(
  marks =c(45,50,54,77,54,56,54,34),
  bp = c(120,233,123,124,155,112,144,189)
  )

ggplot(score,aes(x=marks)) + 
  geom_histogram(binwidth = 5,fill="orange",colors="black")

ggplot(score,aes(x = marks , y = bp)) +
  geom_point(color="darkgreen")


marks <- data.frame(
  subject = rep(c ("maths","science","english"),each =6)
  score = c(78,85,800,55,60,58,62,65,70)

)

# Create the data frame
marks <- data.frame(
  subject = rep(c("maths", "science", "english"), each = 3),
  score = c(78, 85, 80, 55, 60, 58, 62, 65, 70)
)

print(marks)

library(ggplot2)
ggplot(marks, aes(x = subject, y = score, fill = subject)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Scores by Subject", x = "Subject", y = "Score") +
  theme_minimal()



install.packages("dplyr", dependencies = TRUE)

install.packages("tidyverse")









