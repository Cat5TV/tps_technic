minetest.register_node(":technic:chernobylite_block", {
        description = "Chernobylite Block (Degriefed)",
        tiles = {"technic_chernobylite_block.png"},
        is_ground_content = true,
        groups = {cracky=1, radioactive=0, level=2},
        sounds = default.node_sound_stone_defaults(),
        light_source = 2,
})

-- Remove Uranium altogether
minetest.unregister_item("technic:mineral_uranium")
minetest.unregister_item("technic:uranium_block")
minetest.register_alias("technic:mineral_uranium","air")
minetest.register_alias("technic:uranium_block","air")

minetest.override_item("technic:corium_source", {
   after_place_node = function(pos, placer, itemstack, pointed_thing)
         minetest.remove_node(pos)
   end,
})

minetest.unregister_item("technic:bucket_corium")
