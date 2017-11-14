tests
testConvertingGhostToStateSpec
	| ghost result |
	ghost := GHObjectGhostStub new.
	
	result := ghost asStateSpec.
	
	self assert: result class equals: SpecOfIdentity.
	self assert: result requiredValue == ghost