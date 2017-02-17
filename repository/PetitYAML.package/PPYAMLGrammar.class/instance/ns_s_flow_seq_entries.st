spec
ns_s_flow_seq_entries
	^ ns_flow_seq_entry, s_separate optional, 
		( $, asParser, s_separate optional, ns_s_flow_seq_entries optional ) optional 
	
	map: [ :entry :sep :rest |
		rest ifNotNil: [ 
			rest third ifNotNil: [ 
				rest third addFirst: entry.
				rest third
			] ifNil: [ 
				OrderedCollection with: entry.
			]
		] ifNil: [  
			OrderedCollection with: entry
		].
	]