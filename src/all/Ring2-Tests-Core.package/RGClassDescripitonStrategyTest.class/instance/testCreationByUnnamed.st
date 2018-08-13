tests
testCreationByUnnamed

	| anRGBehavior parent |
	
	anRGBehavior := RGClass parent: parent.
	self checkBasicPropertiesOf: anRGBehavior.
	self assert: (anRGBehavior hasResolvedName) not.
