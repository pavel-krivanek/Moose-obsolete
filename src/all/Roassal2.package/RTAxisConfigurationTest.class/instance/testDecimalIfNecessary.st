tests
testDecimalIfNecessary
	config decimalIfNecessary.
	self assert: (config getStringFromNumber: 10) equals: '10'.
	self assert: (config getStringFromNumber: 3.22) equals: '3.22'