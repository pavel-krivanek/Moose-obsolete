tests
testTrait

	| env trait |
	
	env := RGEnvironment new.
	env backend: (RGReadOnlyImageBackend for: env).
	
	trait := RGTestTrait asRingMinimalDefinitionIn: env.
	self assert: trait isTrait.
	self assert: trait isMeta not.
	self assert: trait name equals: #RGTestTrait.
	self assert: trait classTrait name equals: 'RGTestTrait classTrait'.
	self assert: trait category equals: 'Ring2-Tests-Core'.
	self assert: (trait superclass == trait). "cycle, nil in reality"
	self assert: trait comment content equals: RGTestTrait organization comment.
	self assert: trait localMethods size equals: RGTestTrait localMethods size.
	self assert: trait protocols asSortedCollection equals: RGTestTrait protocols asSortedCollection.
	self assert: trait metaclass name equals: 'RGTestTrait classTrait'.
	self assert: trait metaclass superclass name equals: 'Trait'.
	self assert: trait package name equals: 'Ring2-Tests-Core'.
	
