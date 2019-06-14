# LDA Topics

Experimental project to identify research topics in ICES reports

## Web Services

http://data.ices.dk/dataminingiceslibrary/webservices.aspx

For example,

```R
library(jsonlite)
x <- fromJSON("http://data.ices.dk/dataminingiceslibrary/WebAPI/GetBagOfThreeWordsForAcronym/WGDEC/2017")
head(x$Result, 40)
```
