query
hasAny: prop withValue: val 
	 
	| res | 
	res := false. 
	self fragments 
		do: 
			[:fragm |  
			| propVal | 
			propVal := fragm entity privateState 
				propertyAt: prop 
				ifAbsent: [nil]. 
			propVal = val ifTrue: [res := true]]. 
	^res