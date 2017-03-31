accessing
value: aNumber
	self
		assert: [ aNumber between: min and: max ]
		description: 'Value must be between min and max.'.
	value := aNumber