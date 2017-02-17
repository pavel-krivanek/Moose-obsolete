accessing
percentage: aNumber
	self assert: (aNumber between: 0 and: 1).
	percentage := aNumber.