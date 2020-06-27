# obtain port argument (if given)
args <- commandArgs(trailingOnly = TRUE)

if (length(args) == 0) {
        port <- "12000"
} else if (length(args) == 1) {
  port <- args[1]
}
rmarkdown::run(shiny_args = list(host = '0.0.0.0', port = as.numeric(port)))
print(paste("Listening on port", port))

