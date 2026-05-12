# exile_crafting_tables

Adds optional aesthetic workbenches for Exile that keep base-game compatibility.

Design goals:
- Keep Exile's original crafting behavior unchanged.
- Avoid replacing or overriding the base stations.
- Provide optional mid-game workbenches with a more natural look.
- Re-introduce the weaving frame as an optional station.

How it works:
- Every new station is registered under this mod namespace: exile_crafting_tables:*
- Each station opens an existing Exile craft type.
- No custom craft types are required, so the mod stays compatible with the original recipe API.
- The code is namespaced and can be loaded without Siritie.

Included optional stations:
- Crafting Bench (crafting_spot)
- Threshing Sledge (hammering_block)
- Mixing Bucket (mixing_spot)
- Hammering Log (hammering_block)
- Weaving Frame (weaving_frame)
- Grinding Wheel (grinding_stone)

Compatibility notes:
- The mod was extracted from Siritie, but the current goal is to run against the original Exile game.
- Base stations and base recipes remain available.
- The Exile original at `~/.minetest/games/exile` provides the craft types used here.
- Station logic was checked against Exile's `tech` and `nodes_nature` craft station files.

Notes:
- This mod is for recipe organization and presentation only.
- The current focus is visual cleanup, not adding new gameplay loops.

Licenses and permissions:
- This repository's own code is released under The Unlicense (see LICENSE).
- Exile game code and tech station code are GPLv3. The weaving frame behavior and nodebox were adapted from Exile's original tech station implementation in mods/tech/craft_stations.lua.
- Exile media assets are not automatically relicensed by this repository.
- The copied base textures in this mod:
	- textures/exile_crafting_tables_maraka_log.png
	- textures/exile_crafting_tables_limestone.png
	- textures/exile_crafting_tables_granite.png
	- textures/exile_crafting_tables_basalt.png
	are derived from Exile nodes_nature textures and must keep their original attribution/license context.
- According to Exile documentation:
	- mods/nodes_nature/README.txt lists textures/models as CC BY-SA 3.0 (Dokimi, Jan Wielkiewicz).
	- mods/tech/README.txt states textures are CC BY-SA 3.0 unless otherwise noted; tech_stick.png is credited to BlockMen under CC BY-SA 3.0.

Practical rule for this mod:
- Treat external copied/adapted assets as third-party licensed content (GPLv3/CC BY-SA context), even if your original additions are Unlicense.
- Keep attribution notes when redistributing forks or releases containing these assets.
