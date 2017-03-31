tests
testCenter

	self assert: r center equals: 0 @ 0.
	r center: 5 @ 50.
	self assert: r center equals: 5 @ 50