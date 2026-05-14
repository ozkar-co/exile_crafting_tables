local variants = {
    { suffix = "granite", boulder = "nodes_nature:granite_boulder" },
    { suffix = "basalt", boulder = "nodes_nature:basalt_boulder" },
    { suffix = "limestone", boulder = "nodes_nature:limestone_boulder" },
}

for _, variant in ipairs(variants) do
    crafting.register_recipe({
        type = "grinding_stone",
        output = "exile_crafting_tables:grinding_wheel_" .. variant.suffix,
        items = { "group:log 1", variant.boulder .. " 1", "tech:stick 6", "nodes_nature:sand 1" },
        level = 1,
        always_known = true,
    })
end
