tests
testClassTrait

	| env classTrait |
	
	env := RGEnvironment new.
	env backend: (RGReadOnlyImageBackend for: env).
	
	classTrait := RGTestTrait classTrait asRingMinimalDefinitionIn: env.
	self assert: classTrait isTrait.
	self assert: classTrait isMeta.
	self assert: classTrait name equals: 'RGTestTrait classTrait'.
	self assert: classTrait baseTrait name equals: 'RGTestTrait'.
	self assert: classTrait category equals: 'Ring2-Tests-Core'.
	self assert: classTrait superclass name equals: #Trait.
	self assert: classTrait comment content equals: RGTestTrait organization comment.
	self assert: classTrait localMethods size equals: RGTestTrait classTrait localMethods size.
	self assert: classTrait protocols asSortedCollection equals: RGTestTrait classTrait protocols asSortedCollection.
	self assert: classTrait metaclass name equals: #MetaclassForTraits.
	self assert: classTrait package name equals: 'Ring2-Tests-Core'.
	
