# exile_crafting_tables

Adds optional advanced workbenches for Exile that keep base-game compatibility.

Design goals:
- Do not change Exile core crafting behavior.
- Do not replace or override original stations.
- Add optional "mid-game" workbenches with better visuals.
- Re-introduce the weaving frame as an optional station.

How it works:
- Every new station is registered under this mod namespace: exile_crafting_tables:*
- Each station opens an existing Exile craft type (for example crafting_spot, mixing_spot, chopping_block, hammering_block, weaving_frame).
- No custom craft types are required, so this mod stays compatible with the original game recipe API.
- If a craft type exists in the current game (for example mixing_bucket), this mod can expose an optional advanced station for it.

Included optional stations:
- Advanced Crafting Bench (crafting_spot)
- Advanced Threshing Table (threshing_spot)
- Advanced Mixing Table (mixing_spot)
- Advanced Chopping Bench (chopping_block)
- Advanced Hammering Table (hammering_block)
- Weaving Frame (weaving_frame)
- Mixing Bucket set (only when mixing_bucket/mortar_bucket/clay_mixing types exist)

Siritie references used:
- Station mapping and craft type list were reviewed from the Siritie fork craft API and tech station files.
- Mixing bucket nodebox and recipe flow were adapted from Siritie and namespaced to this mod.
- References in Siritie:
	- mods/crafting/init.lua
	- mods/tech/nodes/mixing_bucket.lua
	- mods/tech/crafts/mixing_bucket.lua
	- mods/tech/nodes/craft_stations.lua
	- mods/tech/crafts/craft_stations.lua

Notes:
- This mod is for recipe organization and presentation only.
- Base stations and base recipes remain available.
- Legacy extracted files were removed so only the compatibility path is shipped.
