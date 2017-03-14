accessing
tension: aNumber
	self assert: (aNumber between: 0 and: 1 ).
	tension := aNumber