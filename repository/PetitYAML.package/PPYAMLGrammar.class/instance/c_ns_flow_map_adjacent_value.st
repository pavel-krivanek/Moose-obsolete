spec
c_ns_flow_map_adjacent_value
	^ $: asParser, ( ( s_separate optional,  ns_flow_node ==> #second) / e_node ) "Value"  ==> #second