spec
c_flow_sequence
	^  	$[ asParser, s_separate optional, ns_s_flow_seq_entries YAMLinFlow optional, $] asParser
	
	map: [ :open :separate :entries : close |
		entries ifNil: [ #() ]
	]