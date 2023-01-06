module RPkg
    using Reexport
    @reexport using RCall
    include("init.jl")
    include("pkgutils.jl")
end
