module RPkg
    using RCall
    R"""
    r <- getOption("repos")
    r["CRAN"] <- "https://cloud.r-project.org/"
    options(repos = r)
    """
    include("init.jl")
    __precompile__()
    include("pkgutils.jl")
end
