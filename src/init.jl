R"""
install.packages("renv", repos=r)
"""
@info "RPkg: 'renv' installed"

R"""
install.packages("languageserver", repos=r)
"""
@info "RPkg: 'r-languageserver' installed"
R"""
install.packages("devtools", repos=r)
"""
@info "RPkg: 'devtools' installed"

R"""
if (!require("BiocManager", quietly = TRUE))
       install.packages("BiocManager", repos=r)
"""
@info "RPkg: 'BiocManager' installed"