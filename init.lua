minetest.register_node(":technic:chernobylite_block", {
        description = S("Chernobylite Block (Degriefed)"),
        tiles = {"technic_chernobylite_block.png"},
        is_ground_content = true,
        groups = {cracky=1, level=2},
        sounds = default.node_sound_stone_defaults(),
        light_source = 2,
})
