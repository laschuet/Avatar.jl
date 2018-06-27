# Avatar.jl

[![GitHub License](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/laschuet/Avatar.jl/blob/master/LICENSE.txt)
[![Build Status](https://travis-ci.org/laschuet/Avatar.jl.svg?branch=master)](https://travis-ci.org/laschuet/Avatar.jl)
[![Build status](https://ci.appveyor.com/api/projects/status/67iw76f8o49a980h/branch/master?svg=true)](https://ci.appveyor.com/project/laschuet/avatar-jl/branch/master)
[![Coverage Status](https://coveralls.io/repos/laschuet/Avatar.jl/badge.svg?branch=master&service=github)](https://coveralls.io/github/laschuet/Avatar.jl?branch=master)
[![codecov.io](http://codecov.io/github/laschuet/Avatar.jl/coverage.svg?branch=master)](http://codecov.io/github/laschuet/Avatar.jl?branch=master)

Simple image generator for grid-like avatars using modifiable color palettes

## Usage

```julia
using Avatar

# Specify parameters
generate(cells_x, cells_y, cell_size_x, cell_size_y, palette, out)

# Use default parameters
generate() # same as generate(5, 5, 80, 80, p932683, "avatar.png")
```

Please refer to the source code for instructions on how to specify color
palettes. Two exemplary palettes have already been defined.

## Example

<img
    src="https://avatars0.githubusercontent.com/u/16260432?s=200&v=4"
    alt="Example"
    width="200"
    height="200"
/>

## License

Avatar.jl is licensed under the [MIT License](./LICENSE.txt).
