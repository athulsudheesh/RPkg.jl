R"""
r <- getOption("repos")
r["CRAN"] <- "https://cloud.r-project.org/"
options(repos = r)
install.packages("renv")
"""
@info "RPkg: 'renv' installed"



R"""
r <- getOption("repos")
r["CRAN"] <- "https://cloud.r-project.org/"
options(repos = r)
install.packages("languageserver")
"""
@info "RPkg: 'r-languageserver' installed"


R"""
r <- getOption("repos")
r["CRAN"] <- "https://cloud.r-project.org/"
options(repos = r)
install.packages("devtools")
"""
@info "RPkg: 'devtools' installed"

R"""
r <- getOption("repos")
r["CRAN"] <- "https://cloud.r-project.org/"
options(repos = r)
if (!require("BiocManager", quietly = TRUE))
       install.packages("BiocManager")
"""
@info "RPkg: 'BiocManager' installed"