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
- Threshing Table (threshing_spot)
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
