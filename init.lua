local modpath = minetest.get_modpath(minetest.get_current_modname())

-- Compatibility mode: optional advanced stations that open existing Exile craft types.
dofile(modpath .. "/nodes/advanced_stations.lua")
dofile(modpath .. "/nodes/mixing_bucket.lua")
dofile(modpath .. "/crafts/advanced_stations.lua")
dofile(modpath .. "/crafts/mixing_bucket.lua")
