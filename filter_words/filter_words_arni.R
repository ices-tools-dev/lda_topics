fw <- read.csv("filter_words_arni.csv")

cbind(sort(table(fw$Category), decreasing=TRUE))

lapply(split(fw$Topic, fw$Category), sort)

table(fw$Topic)[table(fw$Topic) > 1]

fw[fw$Notes != "",]
