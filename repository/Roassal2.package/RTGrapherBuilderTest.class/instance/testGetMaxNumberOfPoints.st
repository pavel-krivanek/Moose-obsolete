tests
testGetMaxNumberOfPoints
	| ds |
	self assert: b getMaxNumberOfPoints equals: 0.
	
	ds := RTData new.
	ds points: (1 to: 5).
	b add: ds.
	
	self assert: b getMaxNumberOfPoints equals: 5.
	
	ds := RTData new.
	ds points: (1 to: 10).
	b add: ds.

	self assert: b getMaxNumberOfPoints equals: 10.