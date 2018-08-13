tests
testCreationByUnresolvedNamed

	| anRGBehavior parent |
	
	parent := RGEnvironment	new.
	anRGBehavior := RGClass unresolvedNamed: #SomeClass withParent: parent.
	self checkBasicPropertiesOf: anRGBehavior.
	self assert: anRGBehavior name equals: #SomeClass.
	self assert: anRGBehavior parent equals: parent.
	self assert: anRGBehavior isRingResolved not.
	