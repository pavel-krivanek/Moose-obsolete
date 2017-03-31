tests
testExpectedFailureDetection
	self assert: self expectedFailures asSet equals: #(expectedFailureFails expectedFailurePasses) asSet