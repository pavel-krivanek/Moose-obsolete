accessing-common attributes
model 
	 
	^self 
		attributeAt: #privateModel 
		ifAbsent: [MooseModel ownerOf: self entity]