tests
testProgress
	slider max: 100.
	slider value: 20.
	self assert: slider value equals: 20.
	self assert: slider progress equals: 0.2