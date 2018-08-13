tests
testImplicitEnvironment
	
	| def def2 env |

	def := RGTraitComposition unnamed.
	env := def environment.

	self checkImplicitSingleClassEnvironmentOf: def parent.	

	self assert: (def isRingResolved).
	
	def2 := RGTraitComposition parent: def parent .
	self checkImplicitSingleClassEnvironmentOf: def parent.	
