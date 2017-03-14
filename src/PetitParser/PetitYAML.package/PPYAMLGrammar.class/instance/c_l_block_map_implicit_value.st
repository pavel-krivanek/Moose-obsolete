spec
c_l_block_map_implicit_value 
	^ $: asParser, (s_l_block_node YAMLBlockOut / ((e_node, s_l_comments) ==> #first)) ==> #second