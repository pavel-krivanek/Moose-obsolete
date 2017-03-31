tests
testFurthestFailure
	| f1 f2 |
	
	f1 := PPFailure message: #foo context: context at: 1.
	self assert: context furthestFailure = f1.	
	f2 := PPFailure message: #foo context: context at: 1.
	self assert: context furthestFailure = f1.	
	f2 := PPFailure message: #foo context: context at: 3.
	self assert: context furthestFailure = f2.