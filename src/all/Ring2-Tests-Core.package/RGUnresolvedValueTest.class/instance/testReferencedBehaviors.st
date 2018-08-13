tests
testReferencedBehaviors

	| unresolved | 
	
	unresolved := RGUnresolvedValue new.
	self assert: unresolved referencedBehaviors isEmpty.