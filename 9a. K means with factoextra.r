# Load libraries
install.packages("factoextra")
library(cluster)
library(ggplot2)
library(factoextra)

# Load dataset
data("USArrests")
usarrest <- USArrests

# Standardize the dataset
scale_data <- scale(usarrest)

#k=2
set.seed(123)
k2 <- kmeans(scale_data, centers = 2, nstart = 20)
print(k2)

# Plot using base R
plot(scale_data, col = k2$cluster, 
     main = "K-means clustering (k=2)", 
     pch = 20, cex = 2)

# Plot using factoextra
fviz_cluster(k2, data = scale_data, 
             geom = "point", ellipse.type = "convex",
             main = "Clusters (k=2)") + 
  theme_minimal()

#k = 4

set.seed(123)
k4 <- kmeans(scale_data, centers = 4, nstart = 20)
print(k4)

# Plot using base R
plot(scale_data, col = k4$cluster, 
     main = "K-means clustering (k=4)", 
     pch = 20, cex = 2)

# Plot using factoextra
fviz_cluster(k4, data = scale_data, 
             geom = "point", ellipse.type = "convex",
             main = "Clusters (k=4)") + 
  theme_minimal()


# Compare clustering solutions

table(k2$cluster)
table(k4$cluster)


# Elbow Method

set.seed(123)
fviz_nbclust(scale_data, kmeans, method = "wss", k.max = 15) +
  geom_vline(xintercept = 4, linetype = 2) +
  labs(subtitle = "Elbow method")

