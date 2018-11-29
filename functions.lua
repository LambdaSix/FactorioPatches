industry = {}

industry.techs = {}

function industry.add_tech(tech)
    industry.techs[tech]={name=tech}
end

function industry.replace_science_pack(tech, old, new)
    local r = new
    local o = old
    if not r then r = "science-pack-0" end
    if not o then o = "science-pack-1" end
    if data.raw.technology[tech] then
        for i,ing in pairs(data.raw.technology[tech].unit.ingredients) do
            if ing[1]==o then
                data.raw.technology[tech].unit.ingredients[i][1]=r
            end
        end
    else
        log(tech.." cannot be found, replacement of "..o.." with "..r.." has failed.")
    end
end

function industry.add_science_pack(tech, pack)
    if data.raw.technology[tech] then
        if type(pack) == "table" then
            table.insert(data.raw.technology[tech].unit.ingredients,pack)
        elseif type(pack) == "string" then
            table.insert(data.raw.technology[tech].unit.ingredients,{pack,1})
        elseif type(pack)=="number" then
            table.insert(data.raw.technology[tech].unit.ingredients,{"science-pack-0",pack})
        else
            table.insert(data.raw.technology[tech].unit.ingredients,{"science-pack-0",1})
        end
    else
        log("Cannot find "..tech..", ignoring it.")
    end
end