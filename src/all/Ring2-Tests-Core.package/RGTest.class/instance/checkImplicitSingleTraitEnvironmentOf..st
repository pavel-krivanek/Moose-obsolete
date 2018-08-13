utilities
checkImplicitSingleTraitEnvironmentOf: anRGTrait
	
	self assert: anRGTrait environment ask behaviors size equals: 10.
	self assert: anRGTrait environment ask packages size equals: 5.

	self checkHierarchyConsistencyOf: anRGTrait metaclass.
	
	self assert: (anRGTrait ~~ anRGTrait classTrait).
	self assert: (anRGTrait superclass == anRGTrait superclass).
	self assert: (anRGTrait classTrait superclass == anRGTrait classTrait superclass).
	
	
	
	
