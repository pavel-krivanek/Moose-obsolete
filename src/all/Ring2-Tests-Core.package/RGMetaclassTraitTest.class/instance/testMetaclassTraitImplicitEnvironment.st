tests
testMetaclassTraitImplicitEnvironment

	| trait |
	
	trait := RGMetaclassTrait unnamed.
	self assert: (trait hasUnresolved: #name).
	self checkImplicitSingleTraitEnvironmentOf: trait baseTrait.
	
	
	
	
