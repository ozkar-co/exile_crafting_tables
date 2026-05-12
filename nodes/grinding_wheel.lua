minetest.register_node("exile_crafting_tables:grinding_wheel", {
    description = "Grinding Wheel",
    drawtype = "nodebox",
    tiles = {
        "exile_crafting_tables_grinding_wheel_top.png",
        "exile_crafting_tables_grinding_wheel_bottom.png",
        "exile_crafting_tables_grinding_wheel_side.png",
        "exile_crafting_tables_grinding_wheel_side.png",
        "exile_crafting_tables_grinding_wheel_face.png",
        "exile_crafting_tables_grinding_wheel_face.png",
    },
    stack_max = 1,
    paramtype = "light",
    paramtype2 = "facedir",
    groups = { dig_immediate = 3, falling_node = 1, temp_pass = 1, craftedby = 1 },
    node_box = {
        type = "fixed",
        fixed = {
			{-0.375, -0.5, -0.375, 0.375, -0.375, 0.375}, -- Base
			{-0.124, -0.25, -0.3125, 0.125, 0.1875, 0.3125}, -- Stone
			{-0.124, -0.3125, -0.25, 0.125, 0.25, 0.25}, -- Stone2
			{-0.3125, -0.375, -0.3125, 0.3125, -0.3125, 0.3125}, -- Base2
			{0.125, -0.3125, -0.0625, 0.1875, 0.125, 0.0625}, -- arm1
			{-0.1875, -0.3125, -0.0625, -0.125, 0.125, 0.0625}, -- arm2
		},
    },
    selection_box = {
        type = "fixed",
        fixed = { -0.4375, -0.5000, -0.5000, 0.4375, 0.2500, 0.5000 },
    },
    sounds = nodes_nature.node_sound_wood_defaults(),
    on_rightclick = crafting.make_on_rightclick("grinding_stone", 2, { x = 8, y = 3 }),
})
