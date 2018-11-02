fw <- read.csv("filter_words_arni.csv")

cbind(sort(table(fw$Category), decreasing=TRUE))

lapply(split(fw$Topic, fw$Category), sort)

fw[fw$Notes != "",]
