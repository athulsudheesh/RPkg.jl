module RPkg
    using RCall
    R"""
    options(repos=c(CRAN="https://cran.microsoft.com/"))
    """
    include("init.jl")
    include("pkgutils.jl")
end
