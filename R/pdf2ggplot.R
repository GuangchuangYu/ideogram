##' read pdf and draw the content using ggplot
##'
##'
##' @title pdf2ggplot
##' @param pdf pdf file
##' @param cut_empty_space whether cut empty margins
##' @param density density to parse the pdf file
##' @return ggplot object
##' @importFrom ggimage image_read2
##' @importFrom ggplotify as.ggplot
##' @export
##' @author Guangchuang Yu
pdf2ggplot <- function(pdf, cut_empty_space = TRUE, density = 600) {
    x <- image_read2(pdf, density = density, cut_empty_space = cut_empty_space)
    as.ggplot(x, scale = .99)
}
