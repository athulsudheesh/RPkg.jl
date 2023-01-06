R"""
install.packages("renv")
"""
@info "RPkg: 'renv' installed"

R"""
install.packages("languageserver")
"""
@info "RPkg: 'r-languageserver' installed"
R"""
install.packages("devtools")
"""
@info "RPkg: 'devtools' installed"

R"""
if (!require("BiocManager", quietly = TRUE))
       install.packages("BiocManager")
"""
@info "RPkg: 'BiocManager' installed"