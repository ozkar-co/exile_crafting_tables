local nodebox = {
    type = "fixed",
    fixed = {
        { -0.5, -0.5, -0.5, 0.5, -0.375, 0.5 },
        { -0.4375, -0.375, -0.4375, -0.3125, 0.25, -0.3125 },
        { 0.3125, -0.375, -0.4375, 0.4375, 0.25, -0.3125 },
        { -0.4375, -0.375, 0.3125, -0.3125, 0.25, 0.4375 },
        { 0.3125, -0.375, 0.3125, 0.4375, 0.25, 0.4375 },
    },
}

minetest.register_node("exile_crafting_tables:crafting_bench", {
    description = "Crafting Bench",
    tiles = { "exile_crafting_tables_maraka_log.png" },
    drawtype = "nodebox",
    node_box = nodebox,
    selection_box = {
        type = "fixed",
        fixed = { -0.5, -0.5, -0.5, 0.5, 0.25, 0.5 },
    },
    stack_max = 1,
    paramtype = "light",
    paramtype2 = "facedir",
    groups = { dig_immediate = 3, falling_node = 1, temp_pass = 1, craftedby = 1 },
    sounds = nodes_nature.node_sound_wood_defaults(),
    on_rightclick = crafting.make_on_rightclick("crafting_spot", 2, { x = 8, y = 3 }),
})
