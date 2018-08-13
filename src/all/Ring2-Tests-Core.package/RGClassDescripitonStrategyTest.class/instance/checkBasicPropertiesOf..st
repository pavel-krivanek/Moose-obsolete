tests
checkBasicPropertiesOf: anRGBehavior

	self assert: anRGBehavior isBehavior.	
	self assert: anRGBehavior behaviorStrategy isClassStrategy.
	self assert: anRGBehavior behaviorStrategy owner equals: anRGBehavior.
	self assert: anRGBehavior layout isRingResolved not.
	self assert: anRGBehavior layout isFixedLayout.

	