# RPkg.jl
**An R Package Manager from Julia with ❤️**

`RPkg.jl` is a meta package built on top of `RCall.jl`. Even though `RCall.jl` functions try as much as they can, to blur the lines between R syntax and Julia syntax in a Julia session, R package management is an area where the user is forced to write R scripts. Through `RPKg.jl` we are introducing Julia `Pkg` style syntax for managing your R-packages while using `RCall`. We also export all the functionalities from `RCall.jl`, so you don't have to load `RCall` if you are loading `RPkg.jl`

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

**Note: `RPkg` supports installation via CRAN, Bioconductor, and GitHub**
- To install packages from CRAN, `RPkg.add("pkgname")`
  - If you want to install multiple packages, `RPkg.add("Pkg1", "Pkg2", "Pkg3")`
- To install packages from GitHub URL, `RPkg.add("githubuserid/reponame", :github)`
  - Suppose I want to install the package at [https://github.com/ralmond/CPTtools](https://github.com/ralmond/CPTtools), then `RPkg.add("ralmond/CPTtools", :github)`.
- To install packages from BioConductor, `RPkg.add("pkgname", :bioc)`
  - For eg., I want to install `RGraphviz`, then `RPkg.add("RGraphviz", :bioc)`
