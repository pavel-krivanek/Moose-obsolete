selection
distinctFragments 
	 
	| frags | 
	frags := OrderedCollection new. 
	self 
		do: 
			[:dup |  
			frags 
				indexOf: dup referenceCode 
				ifAbsent: [frags add: dup referenceCode]. 
			frags 
				indexOf: dup duplicateCode 
				ifAbsent: [frags add: dup duplicateCode]]. 
	^frags