tests
testEqualToBoolean
	self assert:
		self comparableTrueValue =
			self comparableTrueValue.
	self deny:
		self comparableFalseValue =
			self comparableTrueValue.
	self deny:
		self comparableTrueValue =
			self comparableFalseValue.
	self assert:
		self comparableFalseValue =
			self comparableFalseValue.