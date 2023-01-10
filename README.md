# RPkg.jl
**An R Package Manager from Julia with ❤️**

`RPkg.jl` is a meta package built on top of `RCall.jl`. Even though `RCall.jl` functions try as much as they can, to blur the lines between R syntax and Julia syntax in a Julia session, R package management is an area where the user is forced to write R scripts. Through `RPKg.jl` we are introducing Julia `Pkg` style syntax for managing your R-packages while using `RCall`. `RPkg` also exposes all the functions from `RCall`, so you don't have to load it separately. 

### APIs 

| Function             | Description                                                       |
| :------------------- | :---------------------------------------------------------------- |
| `RPkg.add()`         | Add package(s)                                                    |
| `RPkg.rm()`          | Remove package(s)                                                 |
| `RPkg.activate()`    | Activate the Project Environment in the current working directory |
| `RPkg.instantiate()` | Create a new Project Environment                                  |
| `RPkg.status()`      | List the packages in your Environment                             |
| `RPkg.update()`      | Update package(s)                                                 |
| `RPkg.build()`       | re-Build package(s)                                               |
| `RPkg.resolve()`     | Resolve dependency issues in the project enviornment              |

**Note: `RPkg` supports installation via CRAN and GitHub**
- To install packages from CRAN, `RPkg.add("pkgname")`
  - If you want to install multiple packages, `RPkg.add("Pkg1", "Pkg2", "Pkg3")`
- The option to install packages from GitHub only works in local r-project enviornments. So first run `RPkg.instantiate()` before proceeding to the following steps:
  - To install packages from GitHub URL, you first need to install `devtools` using `RPkg`, then using the `RPkg.add("username/reponame")` syntax you can install the package from GitHub repo. 
    - For eg., if you want to install the package from [https://github.com/ralmond/CPTtools](https://github.com/ralmond/CPTtools), then after having the devtools insalled you can use `RPkg.add("ralmond/CPTtools")`.


### Example
```julia
julia> using RPkg
julia> RPkg.add("bnlearn")
julia> @rlibrary bnlearn # @rlibrary is a macro from RCall
```

### Know issues:
- In Windows machines, `RPkg` only works inside a local project environment. So before attempting to install any packages using `RPkg`, you need to create a local project enviornmnet using `RPkg.instanitate()`. 
- `RPkg.status()` is broken  
