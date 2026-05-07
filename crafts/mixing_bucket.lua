local function has_type(craft_type)
    return crafting and crafting.recipes and crafting.recipes[craft_type] ~= nil
end

if has_type("crafting_spot") and minetest.registered_nodes["exile_crafting_tables:mixing_bucket"] then
    crafting.register_recipe({
        type = "crafting_spot",
        output = "exile_crafting_tables:mixing_bucket",
        items = { "tech:stick 24" },
        level = 1,
        always_known = true,
    })
end

if has_type("mixing_bucket") and minetest.registered_nodes["exile_crafting_tables:lime_mortar_bucket"] then
    crafting.register_recipe({
        type = "mixing_bucket",
        output = "exile_crafting_tables:lime_mortar_bucket",
        items = { "exile_crafting_tables:mixing_bucket", "tech:lime_mortar" },
        level = 1,
        always_known = true,
    })
end

if has_type("mixing_bucket") and minetest.registered_nodes["exile_crafting_tables:clay_mixing_bucket"] then
    crafting.register_recipe({
        type = "mixing_bucket",
        output = "exile_crafting_tables:clay_mixing_bucket",
        items = { "exile_crafting_tables:mixing_bucket", "nodes_nature:clay" },
        level = 1,
        always_known = true,
    })
end