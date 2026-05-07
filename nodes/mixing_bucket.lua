local function has_type(craft_type)
    return crafting and crafting.recipes and crafting.recipes[craft_type] ~= nil
end

local bucket_nodebox = {
    { -0.2500, -0.5000, 0.0625, -0.1875, -0.4375, -0.0625 },
    { -0.1875, -0.5000, -0.1875, -0.0625, -0.4375, 0.1875 },
    { -0.0625, -0.5000, -0.2500, 0.0625, -0.4375, 0.2500 },
    { 0.0625, -0.5000, -0.1875, 0.1875, -0.4375, 0.1875 },
    { 0.1875, -0.5000, -0.0625, 0.2500, -0.4375, 0.0625 },
    { -0.3125, -0.5000, -0.0625, -0.2500, -0.1250, 0.0625 },
    { -0.2500, -0.5000, -0.1875, -0.1875, -0.1250, -0.0625 },
    { -0.2500, -0.5000, 0.0625, -0.1875, -0.1250, 0.1875 },
    { -0.1875, -0.5000, -0.2500, -0.0625, -0.1250, -0.1875 },
    { -0.1875, -0.5000, 0.1875, -0.0625, -0.1250, 0.2500 },
    { -0.0625, -0.5000, -0.3125, 0.0625, -0.1250, -0.2500 },
    { -0.0625, -0.5000, 0.2500, 0.0625, -0.1250, 0.3125 },
    { 0.0625, -0.5000, -0.2500, 0.1875, -0.1250, -0.1875 },
    { 0.0625, -0.5000, 0.1875, 0.1875, -0.1250, 0.2500 },
    { 0.1875, -0.5000, -0.1875, 0.2500, -0.1250, -0.0625 },
    { 0.1875, -0.5000, 0.0625, 0.2500, -0.1250, 0.1875 },
    { 0.2500, -0.5000, -0.0625, 0.3125, -0.1250, 0.0625 },
    { -0.1875, -0.1250, 0.2500, 0.1875, 0.0625, 0.3125 },
    { -0.2500, -0.1250, 0.1875, -0.1875, 0.0625, 0.2500 },
    { 0.1875, -0.1250, 0.1875, 0.2500, 0.0625, 0.2500 },
    { -0.3125, -0.1250, -0.1875, -0.2500, 0.0625, 0.1875 },
    { 0.2500, -0.1250, -0.1875, 0.3125, 0.0625, 0.1875 },
    { -0.2500, -0.1250, -0.2500, -0.1875, 0.0625, -0.1875 },
    { 0.2500, -0.1250, -0.2500, 0.1875, 0.0625, -0.1875 },
    { -0.1875, -0.1250, -0.3125, 0.1875, 0.0625, -0.2500 },
}

local filled_bucket_nodebox = table.copy(bucket_nodebox)
table.insert(filled_bucket_nodebox, { -0.24999, 0.0000, -0.24999, 0.24999, 0.0000, 0.24999 })

if has_type("mixing_bucket") then
    minetest.register_node("exile_crafting_tables:mixing_bucket", {
        description = "Mixing Bucket",
        tiles = { "tech_stick.png" },
        drawtype = "nodebox",
        node_box = {
            type = "fixed",
            fixed = bucket_nodebox,
        },
        stack_max = 1,
        paramtype = "light",
        groups = { dig_immediate = 3, falling_node = 1, temp_pass = 1, craftedby = 1 },
        sounds = nodes_nature.node_sound_wood_defaults(),
        sunlight_propagates = true,
        on_rightclick = crafting.make_on_rightclick("mixing_bucket", 2, { x = 8, y = 3 }),
    })
end

if has_type("mortar_bucket") then
    minetest.register_node("exile_crafting_tables:lime_mortar_bucket", {
        description = "Mortar Bucket",
        tiles = { "tech_mortar_bucket_top.png", "tech_chopping_block.png" },
        drawtype = "nodebox",
        node_box = {
            type = "fixed",
            fixed = filled_bucket_nodebox,
        },
        stack_max = 1,
        paramtype = "light",
        groups = { dig_immediate = 3, falling_node = 1, temp_pass = 1, craftedby = 1 },
        sounds = nodes_nature.node_sound_wood_defaults(),
        sunlight_propagates = true,
        on_rightclick = crafting.make_on_rightclick("mortar_bucket", 2, { x = 8, y = 3 }),
    })
end

if has_type("clay_mixing") then
    minetest.register_node("exile_crafting_tables:clay_mixing_bucket", {
        description = "Clay Mixing Bucket",
        tiles = { "tech_clay_bucket_top.png", "tech_chopping_block.png" },
        drawtype = "nodebox",
        node_box = {
            type = "fixed",
            fixed = filled_bucket_nodebox,
        },
        stack_max = 1,
        paramtype = "light",
        groups = { dig_immediate = 3, falling_node = 1, temp_pass = 1, craftedby = 1 },
        sounds = nodes_nature.node_sound_wood_defaults(),
        sunlight_propagates = true,
        on_rightclick = crafting.make_on_rightclick("clay_mixing", 2, { x = 8, y = 3 }),
    })
end