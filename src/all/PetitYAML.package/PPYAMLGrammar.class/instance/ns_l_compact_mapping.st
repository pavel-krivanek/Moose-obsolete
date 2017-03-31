spec
ns_l_compact_mapping
	^ ns_l_block_map_entry, (s_indent, ns_l_block_map_entry ==> #second) star 
	map: [ :entry :rest |
		| retval |
		retval := Dictionary new.
		retval at: entry key put: entry value.
		rest do: [ :e | retval at: e key put: e value].
		retval
	]