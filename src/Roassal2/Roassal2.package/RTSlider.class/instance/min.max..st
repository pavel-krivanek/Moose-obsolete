accessing
min: aMin max: aMax
	self assert: [ aMin <= aMax ] description: 'Min value cant be bigger than the max value'.
	min := aMin.
	max := aMax