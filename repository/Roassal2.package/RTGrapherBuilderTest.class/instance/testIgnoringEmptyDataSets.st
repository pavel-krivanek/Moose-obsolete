tests
testIgnoringEmptyDataSets

	| ds |
	self assert: b numberOfDataSets equals: 0.
	
	ds := RTData new.
	b add: ds.
	self assert: b numberOfDataSets equals: 0.
	
	ds := RTData new.
	ds points: #(1).
	b add: ds.
	self assert: b numberOfDataSets equals: 1.
