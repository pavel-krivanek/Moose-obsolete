spec
ns_flow_node
	^ "c_ns_alias_node /"
		ns_flow_content "/
		 ( c_ns_properties(n,c) ,( ( s_separate(n,c), ns_flow_content(n,c) ) / e_scalar ) ) "