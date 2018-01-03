# Avatar.jl

Simple image generator for grid-like avatars using modifiable color palettes

## Usage

```julia
using Avatar

# Specify own parameters
generate(cells_x, cells_y, cell_size_x, cell_size_y, palette, out)

# Use default parameters
generate() # same as generate(5, 5, 80, 80, p932683, "avatar.png")
```

Please refer to the source code for instructions how to specify color palettes.
Two exemplary palettes are already given.

## Example

<img
    src="https://avatars0.githubusercontent.com/u/16260432?s=200&v=4"
    alt="Example"
    width="200"
    height="200"
/>

## License

Avatar.jl is licensed under the [MIT License](./LICENSE.txt).
