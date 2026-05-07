crafting.register_recipe({
    type = "inv",
    output = "exile_crafting_tables:crafting_bench",
    items = { "tech:stick 8", "group:log 1" },
    level = 1,
    always_known = true,
})

crafting.register_recipe({
    type = "crafting_spot",
    output = "exile_crafting_tables:threshing_table",
    items = { "tech:stick 8", "group:fibrous_plant 2" },
    level = 1,
    always_known = true,
})

crafting.register_recipe({
    type = "crafting_spot",
    output = "exile_crafting_tables:mixing_table",
    items = { "tech:stick 12", "group:fibrous_plant 2" },
    level = 1,
    always_known = true,
})

crafting.register_recipe({
    type = "crafting_spot",
    output = "exile_crafting_tables:chopping_bench",
    items = { "group:log 1", "tech:stick 4" },
    level = 1,
    always_known = true,
})

crafting.register_recipe({
    type = "chopping_block",
    output = "exile_crafting_tables:hammering_table",
    items = { "group:log 1", "group:basalt_cobble 1", "group:fibrous_plant 2" },
    level = 1,
    always_known = true,
})

crafting.register_recipe({
    type = "crafting_spot",
    output = "exile_crafting_tables:weaving_frame",
    items = { "tech:stick 12", "group:fibrous_plant 8" },
    level = 1,
    always_known = true,
})