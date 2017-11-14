tests
testPrintingSpecValidation
	| ghost result |
	ghost := GHObjectGhostStub new.
	
	result := ghost stringForSpecValidation.
	
	self assert: result equals: 'a GHObjectGhostStub'