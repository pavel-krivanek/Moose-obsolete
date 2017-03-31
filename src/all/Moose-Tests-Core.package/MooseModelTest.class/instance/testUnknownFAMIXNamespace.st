tests
testUnknownFAMIXNamespace
	self assert: (model unknownFAMIXNamespace isKindOf: FAMIXNamespace).
	self assert: (model unknownFAMIXNamespace == model unknownFAMIXNamespace).
	self assert: (model unknownFAMIXNamespace isStub)