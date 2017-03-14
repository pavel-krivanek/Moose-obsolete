allDependencies
testAllOutgoingDependenciesWithoutSelfLoops
	
	self 
		assert: 25
		equals: self c1FullReferencerOutSide queryAllOutgoingAssociations size. 

	self assert: ((self c1FullReferencerOutSide queryAllOutgoingAssociations atTypeScope) includes: self c1FullReferencerOutSide). 

	self 
		assert: 16
		equals: self c1FullReferencerOutSide queryAllOutgoingAssociations withoutSelfLoops size. 

	self deny: ((self c1FullReferencerOutSide queryAllOutgoingAssociations withoutSelfLoops atTypeScope) includes: self c1FullReferencerOutSide). 
