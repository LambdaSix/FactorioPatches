require('stdlib/data/data').create_data_globals()

-- Update AAI industries starter/burner-phase technologies to need Science Pack 0 rather than SP1
-- After exhausting the technologies requiring SP0 there is a recipe to deconstruct SP0 into some of its parts.

TECHNOLOGY('basic-automation'):remove_pack('science-pack-1'):add_pack('science-pack-0', 10)
TECHNOLOGY('basic-logistics'):remove_pack('science-pack-1'):add_pack('science-pack-0', 10)
TECHNOLOGY('basic-fluid-handling'):remove_pack('science-pack-1'):add_pack('science-pack-0', 50)
TECHNOLOGY('filter-inserters'):remove_pack('science-pack-1'):add_pack('science-pack-0', 150)
TECHNOLOGY('electricity'):remove_pack('science-pack-1'):add_pack('science-pack-0', 50)
TECHNOLOGY('steam-power'):remove_pack('science-pack-1'):add_pack('science-pack-0', 100)
TECHNOLOGY('electric-mining'):remove_pack('science-pack-1'):add_pack('science-pack-0', 150)
TECHNOLOGY('fuel-processing'):remove_pack('science-pack-1'):add_pack('science-pack-0', 20)
TECHNOLOGY('electric-lab'):remove_pack('science-pack-1'):add_pack('science-pack-0', 150)

-- Radar isn't mandatory for first stage of game.
-- Concrete-Walls isn't mandatory for first stage.
-- Steel-Walls can wait until SP1
