tests
testPrintingSpecTitle
	| ghost result |
	ghost := GHObjectGhostStub new.
	
	result := ghost stringForSpecTitle.
	
	self assert: result equals: 'a GHObjectGhostStub'