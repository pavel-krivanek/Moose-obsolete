testing
testMooseDisplayString
	self assert: (Object canUnderstand: #mooseDisplayString).
	self assert: (Object canUnderstand: #mooseDisplayStringOn:)