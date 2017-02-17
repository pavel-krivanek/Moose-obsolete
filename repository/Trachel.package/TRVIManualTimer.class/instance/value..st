accessing
value: aFloat
	self assert: [ aFloat >= 0.0 and: [ aFloat <= 1.0 ] ] description: 'Must provide a value between 0 and 1'.
	value := aFloat