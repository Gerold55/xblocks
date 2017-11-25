local bark_table = { --name, material, invimg
{'Oak Bark', 'tree'},
{'Acacia Bark', 'acacia_tree'},
{'Aspen Bark', 'aspen_tree'},
{'Jungle Bark', 'jungletree'},
{'Pine Bark', 'pine_tree'}
}

for i in ipairs (bark_table) do
	local name = bark_table[i][1]
	local material = bark_table[i][2]
	local invimg = bark_table[i][3]
	
minetest.register_node('xblocks:bark_' ..material, {
	description = name,
	tiles = {'default_'..material..'.png'},
	groups = {choppy=2,oddly_breakable_by_hand=2, furn=1, flammable=1},
	paramtype = 'light',
	sounds = default.node_sound_wood_defaults(),
})
end

local button_table = { --name, material, invimg
{'Oak Button', 'wood'},
{'Acacia Button', 'acacia_wood'},
{'Aspen Button', 'aspen_wood'},
{'Jungle Button', 'junglewood'},
{'Pine Button', 'pine_wood'}
}

for i in ipairs (button_table) do
	local name = button_table[i][1]
	local material = button_table[i][2]
	local invimg = button_table[i][3]
	
minetest.register_node('xblocks:button_up_' ..material, {
	description = name,
	tiles = {'default_'..material..'.png'},
	drawtype = "nodebox",
	groups = {choppy=2,oddly_breakable_by_hand=2, flammable=1},
	paramtype = 'light',
	sounds = default.node_sound_wood_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, -0.125, 0.1875, -0.375, 0.125}, -- NodeBox1
		}
	},
	on_rightclick = function (pos, node, puncher)
		node.name = "xblocks:button_down_"..material
		minetest.set_node(pos, node)
	end,
})
end

local button_table = { --name, material, invimg
{'Oak Button', 'wood'},
{'Acacia Button', 'acacia_wood'},
{'Aspen Button', 'aspen_wood'},
{'Jungle Button', 'junglewood'},
{'Pine Button', 'pine_wood'}
}

for i in ipairs (button_table) do
	local name = button_table[i][1]
	local material = button_table[i][2]
	local invimg = button_table[i][3]
	
minetest.register_node('xblocks:button_down_' ..material, {
	description = name,
	tiles = {'default_'..material..'.png'},
	drawtype = "nodebox",
	groups = {choppy=2,oddly_breakable_by_hand=2, flammable=1, not_in_creative_inventory=1},
	paramtype = 'light',
	drop= 'xblocks:button_up_'..material,
	sounds = default.node_sound_wood_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, -0.125, 0.1875, -0.4375, 0.125}, -- NodeBox1
		}
	},
	on_rightclick = function (pos, node, puncher)
		node.name = "xblocks:button_up_"..material
		minetest.set_node(pos, node)
	end,
})
end