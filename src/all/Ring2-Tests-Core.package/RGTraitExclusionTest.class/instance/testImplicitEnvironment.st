tests
testImplicitEnvironment
	
	| def def2 env |

	def := RGTraitExclusion unnamed.
	env := def environment.

	self assert: (def isRingResolved).
		
	self assert: def parent isTraitComposition.
	self assert: def parent isRingResolved not.

	self assert: def parent parent isClass.
	self assert: def parent parent isRingResolved not.
	
	self assert: def parent transformations size equals: 1.

	self checkImplicitSingleClassEnvironmentOf: def parent parent.	

	def2 := RGTraitExclusion parent: def parent.
	def parent addTransformation: def2.
	
	self checkImplicitSingleClassEnvironmentOf: def parent parent.	
	
	self assert: def parent transformations size equals: 2.
