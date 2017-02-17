accessing
max: aNumber
	self assert: [ min <= aNumber ] description: 'Max value cant be smaller than the min value'.
	max := aNumber