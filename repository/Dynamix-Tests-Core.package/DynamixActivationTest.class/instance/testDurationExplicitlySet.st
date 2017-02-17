tests
testDurationExplicitlySet
	| activation |
	activation := DynamixActivation new.
	activation duration: 123.
	self assert: activation duration = 123