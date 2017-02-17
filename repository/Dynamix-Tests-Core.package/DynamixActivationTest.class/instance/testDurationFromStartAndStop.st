tests
testDurationFromStartAndStop
	| activation |
	activation := DynamixActivation new.
	activation start: 1.
	activation stop: 2.
	self assert: activation duration = 1