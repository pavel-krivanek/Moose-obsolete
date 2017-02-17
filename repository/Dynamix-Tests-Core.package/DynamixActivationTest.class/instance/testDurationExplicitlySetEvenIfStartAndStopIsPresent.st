tests
testDurationExplicitlySetEvenIfStartAndStopIsPresent
	| activation |
	activation := DynamixActivation new.
	activation start: Time now.
	activation stop: Time now.
	activation duration: 123.
	self assert: activation duration = 123