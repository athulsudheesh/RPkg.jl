module RPkg
    using RCall
    R"""
    chooseCRANmirror(ind = 1)
    """
    #include("init.jl")
    __precompile__()
    include("pkgutils.jl")
end
