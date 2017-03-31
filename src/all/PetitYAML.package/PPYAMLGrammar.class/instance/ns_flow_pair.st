spec
ns_flow_pair
	^ 	($? asParser, s_separate, ns_flow_map_explicit_entry ==> #third) / 
		ns_flow_pair_entry
	
	map: [ :assoc |
		Dictionary new at: (assoc key) put: (assoc value); yourself
	]