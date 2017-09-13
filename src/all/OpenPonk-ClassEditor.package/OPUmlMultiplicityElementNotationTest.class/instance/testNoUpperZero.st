tests
testNoUpperZero
	self assert: (self multiplicityOn: #(0 nil)) notationMultiplicityRange equals: '0..1'