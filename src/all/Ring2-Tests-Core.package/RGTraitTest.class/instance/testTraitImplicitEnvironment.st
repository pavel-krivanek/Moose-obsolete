tests
testTraitImplicitEnvironment

	| trait |
	
	trait := RGTrait unnamed.
	self assert: (trait hasUnresolved: #name).
	self checkImplicitSingleTraitEnvironmentOf: trait.
	
	
	
	
