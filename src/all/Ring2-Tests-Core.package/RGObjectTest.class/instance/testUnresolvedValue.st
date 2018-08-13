tests
testUnresolvedValue

	| def | 
	
	def := RGObject named: #SomeDefinition.

	self deny: (def unresolvedValue isRingResolved).
	
	
	