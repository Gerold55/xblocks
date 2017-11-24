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
