spec
c_flow_mapping
	^  	${ asParser, s_separate optional, ns_s_flow_map_entries YAMLinFlow optional, $} asParser
	
	map: [ :open :sep :entries :close |
		entries 	ifNil: [ #() ]
				   ifNotNil: [ 
						entries 	inject: Dictionary new 
									into: [ :dict :assoc | dict at: assoc key put: assoc value; yourself ] ]
	]