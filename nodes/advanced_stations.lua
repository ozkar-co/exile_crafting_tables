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
    "Advanced Crafting Bench",
    { "nodes_nature_maraka_log.png" },
    "crafting_spot"
)

register_advanced_station(
    "threshing_table",
    "Advanced Threshing Table",
    { "nodes_nature_maraka_log.png^tech_station_threshing_spot.png" },
    "threshing_spot"
)

register_advanced_station(
    "mixing_table",
    "Advanced Mixing Table",
    { "nodes_nature_maraka_log.png^tech_mixing_spot_inv.png" },
    "mixing_spot"
)

register_advanced_station(
    "chopping_bench",
    "Advanced Chopping Bench",
    {
        "tech_chopping_block_top.png",
        "tech_chopping_block_top.png",
        "tech_chopping_block.png",
        "tech_chopping_block.png",
        "tech_chopping_block.png",
        "tech_chopping_block.png",
    },
    "chopping_block"
)

register_advanced_station(
    "hammering_table",
    "Advanced Hammering Table",
    { "tech_hammering_block_top_basalt.png" },
    "hammering_block"
)

minetest.register_node("exile_crafting_tables:weaving_frame", {
    description = "Weaving Frame",
    drawtype = "nodebox",
    tiles = { "tech_stick.png" },
    stack_max = minimal.stack_max_bulky,
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