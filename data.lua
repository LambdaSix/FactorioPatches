require("functions")

-- If AAI is installed, add the Science Pack 0 to mesh better with PyCoals
if data.raw.technology["basic-automation"] and data.raw.technology["basic-logistics"] then
    -- Make the SP0 available
    require("prototypes.science-pack-0")
    -- And let labs use them. (burner lab copies from lab)
    table.insert(data.raw["lab"]["lab"].inputs, "science-pack-0")
end
