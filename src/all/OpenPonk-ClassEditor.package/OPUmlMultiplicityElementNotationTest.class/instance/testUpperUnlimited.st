tests
testUpperUnlimited
	self assert: (self multiplicityOn: #(4 '*')) notationMultiplicityRange equals: '4..*'