tests
testNoSpotterInstances

	self assert: GTSpotter allInstances size equals: 0.
	self assert: GTSpotterMorph allInstances size equals: 0