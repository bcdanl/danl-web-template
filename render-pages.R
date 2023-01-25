fnames <- list.files(path=".", 
                     pattern=".Rmd", 
                     all.files=TRUE,
                     full.names=TRUE)

my_function <- function(fname) {
  rmarkdown::render_site( paste(fname) )
}

for (x in fnames) {
  my_function(x)
}
