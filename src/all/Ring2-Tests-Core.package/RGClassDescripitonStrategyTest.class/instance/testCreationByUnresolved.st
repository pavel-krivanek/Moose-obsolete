tests
testCreationByUnresolved

	| anRGBehavior |
	
	anRGBehavior := RGClass unresolved.
	self checkBasicPropertiesOf: anRGBehavior.
	self assert: (anRGBehavior hasResolvedName) not.
	self assert: anRGBehavior isRingResolved not.
