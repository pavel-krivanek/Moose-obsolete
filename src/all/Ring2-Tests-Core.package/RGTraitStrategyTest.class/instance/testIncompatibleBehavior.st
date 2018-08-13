tests
testIncompatibleBehavior

	| anRGBehavior |
	
	anRGBehavior := RGBehavior newTrait.
	
	self checkIncompatible: [ 
		anRGBehavior instanceVariables: Array new ].
	self checkIncompatible: [ 
		anRGBehavior kindOfSubclass].
	self checkIncompatible: [ 
		anRGBehavior removeClassVariable: (RGClassVariable named: #ClassVar parent: anRGBehavior)].
	self checkIncompatible: [ 
		anRGBehavior removeSharedPool: (anRGBehavior environment ensureClassNamed: #SomeClass)].
	self checkIncompatible: [ 
		anRGBehavior sharedPoolsDo: [ :sharedPool | ] ].
	self checkIncompatible: [ 
		anRGBehavior defaultMetaClass ].
