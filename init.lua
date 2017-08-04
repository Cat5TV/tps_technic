minetest.register_node(":technic:chernobylite_block", {
        description = "Chernobylite Block (Degriefed)",
        tiles = {"technic_chernobylite_block.png"},
        is_ground_content = true,
        groups = {cracky=1, radioactive=0, level=2},
        sounds = default.node_sound_stone_defaults(),
        light_source = 2,
})

local nothing = minetest.registered_items["technic:bucket_corium"].on_place

minetest.override_item("technic:bucket_corium", {
        on_place = function(itemstack, placer, pointed_thing)
          return nothing(itemstack, placer, pointed_thing)
        end,
})

minetest.override_item("technic:corium_source", {
   after_place_node = function(pos, placer, itemstack, pointed_thing)
         minetest.remove_node(pos)
   end,
})
