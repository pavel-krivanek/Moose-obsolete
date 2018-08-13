tests
testTrivialMethods

	| def | 
	
	def := RGObject named: #SomeDefinition.

	self deny: (def unresolvedValue isRingResolved).
	
	
	