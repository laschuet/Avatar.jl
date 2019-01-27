using Documenter
using Avatar

makedocs(
    modules = [Avatar],
    sitename = "Avatar.jl",
    pages = [
        "Home" => "index.md",
    ],
)

deploydocs(
    repo = "github.com/laschuet/Avatar.jl.git",
    target = "build",
)
