-- Player should start with these technologies unlocked at least.
industry.add_tech("basic-fluid-handling")
industry.add_tech("basic-logistics")
industry.add_tech("omni-extraction-impure-base")

-- For the techs above, make sure the player has all the pre-requisites.
local ctn = true
while ctn do
    ctn = false
    for _,t in pairs(industry.techs) do
        local tc = data.raw.technology[t.name]
        if tc and tc.prerequisites ~= nil then
            for _, pre in pairs(tc.prerequisites) do
                if not industry.techs[pre] then
                    ctn = true
                    industry.add_tech(pre)
                end
            end
        end
    end
end

--this does the tech fixing.
for _, t in pairs(industry.techs) do
    industry.replace_science_pack(t.name)
end