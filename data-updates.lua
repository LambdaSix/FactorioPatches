-- If AAI is installed, update the technologies with SP0.
if data.raw.technology["basic-automation"] and data.raw.technology["basic-logistics"] then
    require("prototypes.technology.science-pack-0-update")
end
