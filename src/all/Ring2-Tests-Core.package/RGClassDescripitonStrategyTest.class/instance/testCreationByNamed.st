tests
testCreationByNamed

	| anRGBehavior |
	
	anRGBehavior := RGClass named: #SomeClass.
	self checkBasicPropertiesOf: anRGBehavior.
	self assert: anRGBehavior name equals: #SomeClass.
