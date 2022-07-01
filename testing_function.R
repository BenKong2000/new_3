library('Rmisc')
library("xlsx")
library('ggplot2')
library('tidyverse')
library('lubridate')
library('grid')
library('highcharter')
library('RODBC')
library('DBI')
library('maps')
library('readxl')
library('plotly')
library('httr')
library('tidyxl')
library('RSQLite')
library('odbc')


multiplot <- function(..., plotlist=NULL, file, cols=1, layout=NULL) {
  
  plots <- c(list(...), plotlist)
  
  numPlots = length(plots)
  
  if (is.null(layout)) {
    layout <- matrix(seq(1, cols * ceiling(numPlots/cols)),
                     ncol = cols, nrow = ceiling(numPlots/cols))
  }
  
  if (numPlots==1) {
    print(plots[[1]])
  } else {
    grid.newpage()
    pushViewport(viewport(layout = grid.layout(nrow(layout), ncol(layout))))
    
    for (i in 1:numPlots) {
      matchidx <- as.data.frame(which(layout == i, arr.ind = TRUE))
      
      print(plots[[i]], vp = viewport(layout.pos.row = matchidx$row,
                                      layout.pos.col = matchidx$col))
    }
  }
}



cb <- function(df, sep="\t", dec=".", max.size=(200*1000)){
  write.table(df, paste0("clipboard-", formatC(max.size, format="f", digits=0)), sep=sep, row.names=FALSE, dec=dec)
}
to <- function(){as_tibble(read.table(file = "clipboard", header=TRUE,sep = '\t',stringsAsFactors =FALSE))}



