as yet unclassified
s_l_block_indented 	
	"I did the hack here, because yaml's indent is n*space, 
		mine is connected to the column"
	^ 	(( s_indent YAMLNPlus YAMLPlusM "n+1+m" "YAMLM" "(m)",  
										(	ns_l_compact_sequence YAMLNPlus YAMLPlusM "(n+1+m)" / 											ns_l_compact_mapping YAMLNPlus YAMLPlusM "(n+1+m)" ) ) 
														
		) ==> #second	/
		s_l_block_node /
		(( e_node, s_l_comments ) ==> #first) 