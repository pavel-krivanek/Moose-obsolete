tests
testIncompatibleBehavior

	| anRGBehavior aTrait |
	
	anRGBehavior := RGBehavior newMetaclass.
	aTrait := anRGBehavior environment ensureTraitNamed: 'SomeTrait'.
	
	self checkIncompatible: [ 
		anRGBehavior addClassVariable: (RGClassVariable named: #classVar parent: anRGBehavior) ].
	self checkIncompatible: [ 
		anRGBehavior allClassVariables ].
	self checkIncompatible: [ 
		anRGBehavior classVariableDefinitionString ].
	self checkIncompatible: [ 
		anRGBehavior classVariables ].
	self checkIncompatible: [ 
		anRGBehavior classVariables: Array new ].
	self checkIncompatible: [ 
		anRGBehavior classVariablesDo: [:classVar | ] ].
	self checkIncompatible: [ 
		anRGBehavior cleanClassVariables ].
	
	self checkIncompatible: [ 
		anRGBehavior addSharedPool: (anRGBehavior environment ensureClassNamed: #SomePool) ].
	self checkIncompatible: [ 
		anRGBehavior cleanSharedPools ].

	self checkIncompatible: [ 
		anRGBehavior category: #someCategory ].

	self checkIncompatible: [ 
		anRGBehavior classTrait ].

	self checkIncompatible: [ 
		anRGBehavior classTrait: aTrait classTrait ].

	self checkIncompatible: [ 
		anRGBehavior comment: (RGComment parent: anRGBehavior) ].

	self checkIncompatible: [ 
		anRGBehavior sharedPools: Array new ].

	self checkIncompatible: [ 
		anRGBehavior trait ].

