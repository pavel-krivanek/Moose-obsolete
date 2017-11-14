tests
testProcessingMetaMessage

	| actual |
	actual := ghost printString.
	
	self assert: actual equals: 'a ', self ghostClass name