minetest.register_node(":technic:chernobylite_block", {
        description = "Chernobylite Block (Degriefed)",
        tiles = {"technic_chernobylite_block.png"},
        is_ground_content = true,
        groups = {cracky=1, radioactive=0, level=2},
        sounds = default.node_sound_stone_defaults(),
        light_source = 2,
})

minetest.register_node( ":technic:mineral_uranium", {
        description = "Uranium Ore",
        tiles = { "default_stone.png^technic_mineral_uranium.png" },
        is_ground_content = true,
        groups = {cracky=3, radioactive=0},
        sounds = default.node_sound_stone_defaults(),
        drop = "technic:uranium_lump",
})

minetest.register_node(":technic:uranium_block", {
        description = "Uranium Block",
        tiles = { "technic_uranium_block.png" },
        is_ground_content = true,
        groups = {uranium_block=1, cracky=1, level=2, radioactive=0},
        sounds = default.node_sound_stone_defaults()
})


minetest.override_item("technic:corium_source", {
   after_place_node = function(pos, placer, itemstack, pointed_thing)
         minetest.remove_node(pos)
   end,
})

minetest.unregister_item("technic:bucket_corium")


-- Temporary, until can be added to priv
minetest.unregister_item("technic:lava_can")
