tests
testIncompatibleBehavior

	| anRGBehavior |
	
	anRGBehavior := RGBehavior newClass.
	
	self checkIncompatible: [ 
		anRGBehavior baseClass: (anRGBehavior environment ensureClassNamed: #SomeOtherClass) ].
	self checkIncompatible: [ 
		anRGBehavior baseTrait ].
	self checkIncompatible: [ 
		anRGBehavior baseTrait: (anRGBehavior environment ensureTraitNamed: #SomeTrait) ].
