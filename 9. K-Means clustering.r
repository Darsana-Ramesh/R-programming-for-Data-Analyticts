install.packages("cluster")
library(cluster)
usarrest= datasets::USArrests
scale_data=scale(usarrest)

#when k=2
result=kmeans(scale_data, centers=2, nstart=20)
result$cluster
plot(scale_data,col=(result$cluster), main="K-means clustering result with k=2",xlab="", ylab="", pch=20, cex=2)
result
result$centers
result$tot.withinss

#when k=3
result2=kmeans(scale_data, centers=2, nstart=20)
result2$cluster
plot(scale_data,col=(result2$cluster), main="K-means clustering result with k=3",xlab="", ylab="", pch=20, cex=2)
result2$tot.withinss

#when k=4
result3=kmeans(scale_data, centers=2, nstart=20)
result3$cluster
plot(scale_data,col=(result3$cluster), main="K-means clustering result with k=4",xlab="", ylab="", pch=20, cex=2)



