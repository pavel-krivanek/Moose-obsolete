tests
testCandidateInvocationsOnlyDefinedInSuperclass
	| invocation |
	invocation := self invocationFrom: #'Smalltalk::LANOutputServer.accept:(Object)' to: #'send:(Object)'.
	self assert: invocation notNil.
	self assert: invocation candidates size equals: 1.
	self assert: (invocation candidates includes: (self model entityNamed: #'Smalltalk::LANNode.send:(Object)'))