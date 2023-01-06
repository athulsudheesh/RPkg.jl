R"""
install.packages("renv", repos="https://cran.microsoft.com/")
"""
@info "RPkg: 'renv' installed"

R"""
install.packages("languageserver", repos="https://cran.microsoft.com/")
"""
@info "RPkg: 'r-languageserver' installed"
R"""
install.packages("devtools", repos="https://cran.microsoft.com/")
"""
@info "RPkg: 'devtools' installed"

R"""
if (!require("BiocManager", quietly = TRUE))
       install.packages("BiocManager", repos="https://cran.microsoft.com/")
"""
@info "RPkg: 'BiocManager' installed"