accessing
min: aNumber
	self assert: [ aNumber <= max ] description: 'Min value cant be bigger than the max value'.
	min := aNumber