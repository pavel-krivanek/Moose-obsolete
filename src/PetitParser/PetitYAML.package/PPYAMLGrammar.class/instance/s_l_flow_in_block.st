spec
s_l_flow_in_block 	
	^ 	s_separate YAMLNPlus YAMLFlowOut "(n+1,flow_out)", 
		ns_flow_node YAMLNPlus YAMLFlowOut "(n+1,flow_out)", 
		s_l_comments
	
	map: [ :separate :flow_node :comment |
		flow_node
	]