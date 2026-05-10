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

crafting.register_recipe({
    type = "crafting_spot",
    output = "exile_crafting_tables:grinding_wheel",
    items = { "group:stone 1", "group:granite_cobble 2", "tech:stick 6", "nodes_nature:sand 1" },
    level = 1,
    always_known = true,
})