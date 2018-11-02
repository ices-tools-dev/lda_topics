fw <- read.csv("filter_words_arni.csv")

cbind(sort(table(fw$Category), decreasing=TRUE))

lapply(split(fw$Term, fw$Category), sort)

table(fw$Term)[table(fw$Term) > 1]

fw[fw$Notes != "",]
