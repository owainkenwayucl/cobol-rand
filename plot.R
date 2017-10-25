args <- commandArgs(trailingOnly=TRUE)

infile <- "genrand.out"
outfile <- "histogram.png"

if (length(args)>1) {
  infile <- args[1]
  outfile <- args[2]
}

d <- read.csv(infile)

# Open our output file
png(file=outfile, width = 1280, height = 720)

# Plot.
hist(as.numeric(d$r), breaks = 100, main = "Histogram of COBOL RANDOM function", xlab = "Value", col = "grey")

# Tidy up
dev.off()
