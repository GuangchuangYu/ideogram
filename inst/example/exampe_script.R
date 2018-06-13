karyotype <- read.table("karyotype.txt", sep = "\t", header = T, stringsAsFactors = F, colClasses = c("character", "integer", "integer", "integer", "integer"))
mydata <- read.table("data_1.txt", sep = "\t", header = T, stringsAsFactors = F, colClasses = c("character", "integer", "integer", "integer"))
mydata_interval <- read.table("data_2.txt", sep = "\t", header = T, stringsAsFactors = F, colClasses = c("character", "character", "character", "integer", "integer", "character"))

require(ideogram)
require(magick)
require(ggplotify)

ideogram(karyotype, mydata, mydata_interval, "xx.svg")
x = image_read("xx.svg")
p = as.ggplot(x)

ideogram(karyotype, mydata, output = "yy.svg")
y = image_read("yy.svg")
g = as.ggplot(y)

cowplot::plot_grid(p, g, ncol=2)