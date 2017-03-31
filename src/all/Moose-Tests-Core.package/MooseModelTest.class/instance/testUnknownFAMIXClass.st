tests
testUnknownFAMIXClass
	self assert: (model unknownFAMIXClass isKindOf: FAMIXClass).
	self assert: (model unknownFAMIXClass == model unknownFAMIXClass).
	self assert: (model unknownFAMIXClass isStub)