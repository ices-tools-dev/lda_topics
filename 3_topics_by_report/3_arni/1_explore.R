## 1  Read in data
x <- read.csv("../1_shaheen/topic-distributions-per-report.csv", check.names=FALSE)

## 2  Filter out rows without year or group name
x <- x[x$Year != "A",]
x$Year <- as.integer(x$Year)
x <- x[x$Group != "NoAcronym",]

## 3  Barplots
png("overview.png", width=1200, height=600, pointsize=20)
par(mfrow=c(1,3))

barplot(table(x$Year), main="Reports by Year")

opar <- par(plt=c(0.2,0.95,0.12, 0.89))
gcount <- sort(table(x$Group), decreasing=TRUE)
barplot(gcount[gcount>20], horiz=TRUE, las=1, main="Reports by Group")
par(opar)

left <- function(x, n) substr(x, 1, n)
right <- function(x, n) substr(x, nchar(x)-n+1, nchar(x))
type <- rep("", nrow(x))
type[left(x$Group,2) == "WG"] <- "WG"
type[right(x$Group,2) == "WG"] <- "WG"
type[left(x$Group,2) == "WK"] <- "WK"
type[left(x$Group,3) == "IBP"] <- "IBP"
type[left(x$Group,2) == "SG"] <- "SG"
type[left(x$Group,2) == "PG"] <- "PG"
type[left(x$Group,2) == "AG"] <- "AG"
type[type == ""] <- "Other"
barplot(sort(table(type), decreasing=TRUE), main="Reports by Type")
dev.off()
