# Dataset
heart_rates <- c(72, 75, 78, 72, 80, 85, 90, 76, 74, 79, 88, 92, 72, 85, 87, 84, 77, 81, 83, 86)

# 1. Descriptive statistics

# Mean
mean_val <- mean(heart_rates)

# Median
median_val <- median(heart_rates)

# Mode function (custom)
get_mode <- function(x) {
  uniq_vals <- unique(x)
  uniq_vals[which.max(tabulate(match(x, uniq_vals)))]
}
mode_val <- get_mode(heart_rates)

# Range
range_val <- range(heart_rates)
range_diff <- diff(range_val)  # max - min

# Variance
variance_val <- var(heart_rates)

# Standard Deviation
sd_val <- sd(heart_rates)

# Print results
cat("Mean:", mean_val, "\n")
cat("Median:", median_val, "\n")
cat("Mode:", mode_val, "\n")
cat("Range:", range_val[1], "to", range_val[2], "(Difference:", range_diff, ")\n")
cat("Variance:", variance_val, "\n")
cat("Standard Deviation:", sd_val, "\n")

# 2. Visualization
par(mfrow = c(1, 2)) # side-by-side plots

# Histogram
hist(heart_rates, 
     main = "Histogram of Resting Heart Rates", 
     xlab = "Heart Rate (bpm)", 
     col = "lightblue", 
     border = "black")

# Boxplot
boxplot(heart_rates, 
        main = "Boxplot of Resting Heart Rates", 
        ylab = "Heart Rate (bpm)", 
        col = "lightgreen")

# 3. Identify potential outliers
outlier_vals <- boxplot.stats(heart_rates)$out
cat("Potential Outliers:", outlier_vals, "\n")

