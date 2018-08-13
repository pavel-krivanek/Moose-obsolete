tests
testCreationByNamedParent

	| anRGBehavior parent |
	
	parent := RGEnvironment	new.
	anRGBehavior := RGClass named: #SomeClass parent: parent.
	self checkBasicPropertiesOf: anRGBehavior.
	self assert: anRGBehavior name equals: #SomeClass.
	self assert: anRGBehavior parent equals: parent.
