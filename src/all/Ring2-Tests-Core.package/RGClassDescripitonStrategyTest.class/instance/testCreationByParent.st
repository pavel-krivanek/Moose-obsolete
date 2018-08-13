tests
testCreationByParent

	| anRGBehavior parent |
	
	parent := RGEnvironment	new.
	anRGBehavior := RGClass parent: parent.
	self checkBasicPropertiesOf: anRGBehavior.
	self assert: (anRGBehavior hasResolvedName) not.
	self assert: anRGBehavior parent equals: parent.