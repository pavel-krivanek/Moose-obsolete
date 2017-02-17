tests
testCandidateInvocationsThree
	| invocation |
	invocation := self invocationFrom: #'Smalltalk::LANSingleDestinationAddress.equalsSingle:(Object)' to: #'id()'.
	self assert: invocation notNil.
	self assert: invocation candidates size equals: 1.
	self assert: (invocation candidates includes: (self model entityNamed: #'Smalltalk::LANSingleDestinationAddress.id()'))