# Assumes you have compiled genrand.cbl and > output to file "genrand.out"
d <- read.csv("genrand.out")

# Open our output file
png(file="histogram.png", width = 1280, height = 720)

# Plot.
hist(as.numeric(d$r), breaks = 100, main = "Histogram of COBOL RANDOM function", xlab = "Value", col = "grey")

# Tidy up
dev.off()