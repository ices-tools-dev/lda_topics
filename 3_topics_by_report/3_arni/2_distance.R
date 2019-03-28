## 1  Read in data
x <- read.csv("../1_shaheen/topic-distributions-per-report.csv", check.names=FALSE)

## 2  Filter out rows without year or group name
x <- x[x$Year != "A",]
x$Year <- as.integer(x$Year)
x <- x[x$Group != "NoAcronym",]

## 3  Average topics by group
y <- x[!(names(x) %in% c("Year","Title"))]
y <- aggregate(.~Group, y, mean)
