module Avatar

export generate

using HTTP
using Images
using JSON

""""""
function fetch(palette_id)
    response = HTTP.request("GET", "http://www.colourlovers.com/api/palette/$palette_id?format=json")
    json = JSON.parse(String(response.body))
    palette = json[1]["colors"]
    return map(c -> parse(Colorant, "#" * c), palette)
end

""""""
function generate(cells_x=5, cells_y=5, cell_size_x=80, cell_size_y=80,
                    palette_id=379413, out="avatar.png")
    palette = fetch(palette_id)
    img = rand(palette, cells_x, cells_y)
    img = repeat(img, inner=(cell_size_x, cell_size_y))
    save(out, img)
end

end # module Avatar
