local function register_advanced_station(name, description, tiles, craft_type)
    minetest.register_node("exile_crafting_tables:" .. name, {
        description = description,
        tiles = tiles,
        drawtype = "nodebox",
        node_box = {
            type = "fixed",
            fixed = {
                { -0.5, -0.5, -0.5, 0.5, -0.375, 0.5 },
                { -0.4375, -0.375, -0.4375, -0.3125, 0.25, -0.3125 },
                { 0.3125, -0.375, -0.4375, 0.4375, 0.25, -0.3125 },
                { -0.4375, -0.375, 0.3125, -0.3125, 0.25, 0.4375 },
                { 0.3125, -0.375, 0.3125, 0.4375, 0.25, 0.4375 },
            },
        },
        selection_box = {
            type = "fixed",
            fixed = { -0.5, -0.5, -0.5, 0.5, 0.25, 0.5 },
        },
        stack_max = 1,
        paramtype = "light",
        paramtype2 = "facedir",
        groups = { dig_immediate = 3, falling_node = 1, temp_pass = 1, craftedby = 1 },
        sounds = nodes_nature.node_sound_wood_defaults(),
        on_rightclick = crafting.make_on_rightclick(craft_type, 2, { x = 8, y = 3 }),
    })
end

register_advanced_station(
    "crafting_bench",
    "Crafting Bench",
    { "nodes_nature_maraka_log.png" },
    "crafting_spot"
)

register_advanced_station(
    "threshing_table",
    "Threshing Table",
    { "nodes_nature_maraka_log.png^tech_station_threshing_spot.png" },
    "threshing_spot"
)

minetest.register_node("exile_crafting_tables:hammering_table", {
    description = "Hammering Log",
    tiles = {
        "exile_crafting_tables_hammering_log_top.png",
        "tech_chopping_block_top.png",
        "exile_crafting_tables_hammering_log_right.png",
        "exile_crafting_tables_hammering_log_left.png",
        "exile_crafting_tables_hammering_log_back.png",
        "exile_crafting_tables_hammering_log_front.png",
    },
    drawtype = "nodebox",
    node_box = {
        type = "fixed",
        fixed = {
            { -0.375, -0.5, -0.375, 0.375, 0.250, 0.375 },
            { -0.3125, -0.5, 0.375, 0.3125, 0.250, 0.4375 },
            { -0.3125, -0.5, -0.4375, 0.3125, 0.250, -0.375 },
            { 0.375, -0.5, -0.3125, 0.4375, 0.250, 0.3125 },
            { -0.4375, -0.5, -0.3125, -0.375, 0.250, 0.3125 },
            { -0.0625, 0.23, 0.0000, 0.0625, 0.36, 0.3125 },
            { -0.0625, 0.23, 0.1250, 0.2500, 0.3125, 0.1875 },
        },
    },
    stack_max = 1,
    paramtype = "light",
    paramtype2 = "facedir",
    groups = { dig_immediate = 3, falling_node = 1, temp_pass = 1, craftedby = 1 },
    sounds = nodes_nature.node_sound_wood_defaults(),
    on_rightclick = crafting.make_on_rightclick("hammering_block", 2, { x = 8, y = 3 }),
})

minetest.register_node("exile_crafting_tables:grinding_wheel", {
    description = "Grinding Wheel",
    drawtype = "nodebox",
    tiles = {
        "tech_station_grinding_spot.png",
        "nodes_nature_maraka_log.png",
        "nodes_nature_maraka_log.png",
        "nodes_nature_maraka_log.png",
        "nodes_nature_maraka_log.png",
        "nodes_nature_maraka_log.png",
    },
    stack_max = 1,
    paramtype = "light",
    paramtype2 = "facedir",
    groups = { dig_immediate = 3, falling_node = 1, temp_pass = 1, craftedby = 1 },
    node_box = {
        type = "fixed",
        fixed = {
            { -0.4375, -0.5000, -0.3125, 0.4375, -0.4375, 0.3125 },
            { -0.3750, -0.4375, -0.2500, -0.2500, 0.1875, -0.1250 },
            { 0.2500, -0.4375, -0.2500, 0.3750, 0.1875, -0.1250 },
            { -0.3750, -0.4375, 0.1250, -0.2500, 0.1875, 0.2500 },
            { 0.2500, -0.4375, 0.1250, 0.3750, 0.1875, 0.2500 },
            { -0.3125, 0.1250, -0.2500, 0.3125, 0.1875, 0.2500 },
            { -0.0625, -0.0625, -0.5000, 0.0625, 0.0625, 0.5000 },
            { -0.2500, -0.2500, -0.3125, 0.2500, 0.2500, -0.1250 },
            { -0.1250, -0.1250, -0.3750, 0.1250, 0.1250, -0.0625 },
        },
    },
    selection_box = {
        type = "fixed",
        fixed = { -0.4375, -0.5000, -0.5000, 0.4375, 0.2500, 0.5000 },
    },
    sounds = nodes_nature.node_sound_wood_defaults(),
    on_rightclick = crafting.make_on_rightclick("grinding_stone", 2, { x = 8, y = 3 }),
})

minetest.register_node("exile_crafting_tables:weaving_frame", {
    description = "Weaving Frame",
    drawtype = "nodebox",
    tiles = { "tech_stick.png" },
    stack_max = 1,
    paramtype = "light",
    paramtype2 = "facedir",
    groups = { falling_node = 1, dig_immediate = 3, craftedby = 1 },
    node_box = {
        type = "fixed",
        fixed = {
            { -0.3750, -0.3750, -0.3750, 0.3750, -0.2500, -0.2500 },
            { -0.5000, -0.5000, -0.3750, -0.3750, -0.1250, -0.2500 },
            { 0.3750, -0.5000, -0.3750, 0.5000, -0.1250, -0.2500 },
            { 0.3750, -0.5000, 0.3750, 0.5000, 0.0625, 0.5000 },
            { -0.5000, -0.5000, 0.3750, -0.3750, 0.0625, 0.5000 },
            { -0.3750, -0.0625, 0.3750, 0.3750, 0.0625, 0.5000 },
            { -0.3125, -0.5000, 0.3750, -0.2500, -0.0625, 0.4375 },
            { 0.2500, -0.5000, 0.3750, 0.3125, -0.0625, 0.4375 },
            { 0.1250, -0.5000, 0.3750, 0.1875, -0.0625, 0.4375 },
            { -0.1875, -0.5000, 0.3750, -0.1250, -0.0625, 0.4375 },
            { -0.0625, -0.5000, 0.3750, 0.0625, -0.0625, 0.5000 },
            { -0.5000, -0.0625, 0.3125, 0.5000, 0.0000, 0.3750 },
            { -0.5000, -0.4375, 0.3125, 0.5000, -0.3750, 0.3750 },
            { -0.4375, -0.3750, -0.3000, -0.3750, -0.3000, 0.3750 },
            { 0.4375, -0.3750, -0.3000, 0.3750, -0.3000, 0.3750 },
        },
    },
    sounds = nodes_nature.node_sound_wood_defaults(),
    on_rightclick = crafting.make_on_rightclick("weaving_frame", 2, { x = 8, y = 3 }),
})