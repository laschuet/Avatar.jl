module Avatar

using Images

# (? ” ?)
# https://www.colourlovers.com/palette/848743
p848743 = [
    RGB(73 / 255, 10 / 255, 61 / 255),
    RGB(189 / 255, 21 / 255, 80 / 255),
    RGB(233 / 255, 127 / 255, 2 / 255),
    RGB(248 / 255, 202 / 255, 0 / 255),
    RGB(138 / 255, 155 / 255, 15 / 255)
]

# Compatible
# https://www.colourlovers.com/palette/932683
p932683 = [
    RGB(63 / 255, 184 / 255, 175 / 255),
    RGB(127 / 255, 199 / 255, 175 / 255),
    RGB(218 / 255, 216 / 255, 167 / 255),
    RGB(255 / 255, 158 / 255, 157 / 255),
    RGB(255 / 255, 61 / 255, 127 / 255)
]

# you are beautiful
# https://www.colourlovers.com/palette/379413
p379413 = [
    RGB(53 / 255, 19 / 255, 48 / 255),
    RGB(66 / 255, 66 / 255, 84 / 255),
    RGB(100 / 255, 144 / 255, 138 / 255),
    RGB(232 / 255, 202 / 255, 164 / 255),
    RGB(202 / 255, 42 / 255, 65 / 255)
]

""""""
function generate(cells_x=5, cells_y=5, cell_size_x=80, cell_size_y=80,
                    palette=p379413, out="avatar.png")
    CELL1 = fill(palette[1], cell_size_x, cell_size_y)
    CELL2 = fill(palette[2], cell_size_x, cell_size_y)
    CELL3 = fill(palette[3], cell_size_x, cell_size_y)
    CELL4 = fill(palette[4], cell_size_x, cell_size_y)
    CELL5 = fill(palette[5], cell_size_x, cell_size_y)
    cells = [CELL1, CELL2, CELL3, CELL4, CELL5]

    # Initialize first row of final grid
    GRID = rand(cells)
    for i in 1 : cells_y - 1
        GRID = [GRID rand(cells)]
    end

    # Concatenate more rows
    for i in 1 : cells_x - 1
        ROW = rand(cells)
        for j in 1 : cells_y - 1
            ROW = [ROW rand(cells)]
        end
        GRID = [GRID; ROW]
    end

    save(out, GRID)
end

export
    generate,
    p848743,
    p932683

end # module Avatar
