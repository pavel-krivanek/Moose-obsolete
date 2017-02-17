tests
testCandidateInvocationsTwo
	| invocation |
	invocation := self invocationFrom: #'Smalltalk::LANInterface.originate()' to: #'originate:(Object)'.
	self assert: invocation notNil.
	self assert: invocation candidates size equals: 1.
	self
		assert: (invocation candidates includes: (self model entityNamed: #'Smalltalk::LANWorkStation.originate:(Object)'))