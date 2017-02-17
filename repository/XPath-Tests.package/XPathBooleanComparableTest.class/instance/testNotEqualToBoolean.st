tests
testNotEqualToBoolean
	self deny:
		self comparableTrueValue ~=
			self comparableTrueValue.
	self assert:
		self comparableFalseValue ~=
			self comparableTrueValue.
	self assert:
		self comparableTrueValue ~=
			self comparableFalseValue.
	self deny:
		self comparableFalseValue ~=
			self comparableFalseValue.