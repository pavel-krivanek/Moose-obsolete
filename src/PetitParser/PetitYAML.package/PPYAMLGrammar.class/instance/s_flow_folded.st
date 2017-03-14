spec
s_flow_folded
 	^ s_separate_in_line optional, 
		b_l_folded YAMLFlowIn "(n,flow-in)",
		s_flow_line_prefix "(n)" ==> #second