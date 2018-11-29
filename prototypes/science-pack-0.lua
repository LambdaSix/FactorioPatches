ITEM {
    type = 'tool',
    name = 'science-pack-0',
    icon = '__aai-industry-sp0__/graphics/icons/science-pack-0.png',
    icon_size = 32,
    flags = {'goes-to-main-inventory'},
    subgroup = 'science-pack',
    order = 'a[science-pack-0]',
    stack_size = 200,
    durability = 1,
    durability_description_key = 'description.science-pack-remaining-amount-key',
    durability_description_value = 'description.science-pack-remaining-amount-value'
}

RECIPE {
    type = 'recipe',
    name = 'science-pack-0',
    category = 'crafting',
    enabled = true,
    energy_required = 0.6,
    ingredients =   {
        {type = 'item', name = 'copper-plate', amount = 2},
        {type = 'item', name = 'iron-gear-wheel', amount = 1}
    },
    results = {
        {type = 'item', name = 'science-pack-0', amount = 1}
    }
}

RECIPE {
    type = 'recipe',
    name = 'science-pack-0-deconstruct',
    category = 'crafting',
    enabled = true,
    energy_required = 0.6,
    ingredients = {
        {type = 'item', name = 'science-pack-0', amount = 1}
    },
    results =   {
        {type = 'item', name = 'copper-plate', amount = 1},
        {type = 'item', name = 'iron-gear-wheel', amount = 1}
    }
}