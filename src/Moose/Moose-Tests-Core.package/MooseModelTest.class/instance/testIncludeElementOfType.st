tests
testIncludeElementOfType
	self assert: (self model includesElementsOfType: FAMIXClass).
	self deny: (self model includesElementsOfType: SmallInteger)