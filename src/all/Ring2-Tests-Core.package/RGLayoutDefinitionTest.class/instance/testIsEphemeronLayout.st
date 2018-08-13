tests
testIsEphemeronLayout

	self assert: (RGEphemeronLayout unnamed isEphemeronLayout).
	self deny: (RGFixedLayout unnamed isEphemeronLayout).
	