spec
c_flow_json_content
	^ 	c_flow_sequence / 
		c_flow_mapping / 
		"c_single_quoted /"
		c_double_quoted