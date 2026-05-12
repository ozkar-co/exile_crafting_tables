local nodebox = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.375, -0.1875, 0.0625, -0.1875}, -- Leg1_(short)
			{0.25, -0.5, -0.375, 0.375, 0.25, -0.1875}, -- Leg2
			{0.25, -0.5, 0.1875, 0.4375, 0.25, 0.375}, -- leg3
			{-0.375, -0.5, 0.1875, -0.1875, 0.0625, 0.375}, -- Leg4_(short)
			{-0.5, 0, -0.4375, -0.3125, 0.0625, 0.4375}, -- NodeBox5
			{-0.3125, 0.0625, -0.4375, -0.0625, 0.125, 0.4375}, -- NodeBox6
			{-0.0625, 0.125, -0.4375, 0.125, 0.1875, 0.4375}, -- NodeBox7
			{0.125, 0.1875, -0.4375, 0.3125, 0.25, 0.4375}, -- NodeBox8
			{0.3125, 0.25, -0.4375, 0.5, 0.3125, 0.4375}, -- NodeBox9
		}
	}

minetest.register_node("exile_crafting_tables:threshing_sledge", {
    description = "Threshing Sledge",
    tiles = {
        "exile_crafting_tables_sledge_top.png",
        "exile_crafting_tables_maraka_log.png",
        "exile_crafting_tables_maraka_log.png",
        "exile_crafting_tables_maraka_log.png",
        "exile_crafting_tables_maraka_log.png",
        "exile_crafting_tables_maraka_log.png",
    },
    drawtype = "nodebox",
    node_box = nodebox,
    selection_box = {
        type = "fixed",
        fixed = { -0.5, -0.5, -0.5, 0.5, 0.3125, 0.5 },
    },
    stack_max = 1,
    paramtype = "light",
    paramtype2 = "facedir",
    groups = { dig_immediate = 3, falling_node = 1, temp_pass = 1, craftedby = 1 },
    sounds = nodes_nature.node_sound_wood_defaults(),
    on_rightclick = crafting.make_on_rightclick("threshing_spot", 2, { x = 8, y = 3 }),
})
