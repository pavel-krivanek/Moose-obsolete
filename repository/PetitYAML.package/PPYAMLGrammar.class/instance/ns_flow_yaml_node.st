spec
ns_flow_yaml_node 
	^ "c_ns_alias_node /"
 	  	ns_flow_yaml_content "/
 		(c_ns_properties, ( ( s_separate(n,c), ns_flow_yaml_content(n,c) ) / e_scalar ) ) "