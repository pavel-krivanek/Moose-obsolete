tests
testNoExampleInstances

	self assert: GTExample allSubInstances size equals: 0.
	self assert: GTExampleResult allSubInstances size equals: 0.
	