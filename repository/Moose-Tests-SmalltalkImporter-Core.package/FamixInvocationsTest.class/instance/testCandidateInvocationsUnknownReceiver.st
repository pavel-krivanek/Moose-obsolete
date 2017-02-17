tests
testCandidateInvocationsUnknownReceiver
	| invocation |
	invocation := self invocationFrom: #'Smalltalk::LANNode.send:(Object)' to: #'accept:(Object)'.
	self assert: invocation notNil.
	self assert: invocation candidates size equals: 3.
	self assert: (invocation candidates includes: (self model entityNamed: #'Smalltalk::LANNode.accept:(Object)')).
	self assert: (invocation candidates includes: (self model entityNamed: #'Smalltalk::LANWorkStation.accept:(Object)')).
	self assert: (invocation candidates includes: (self model entityNamed: #'Smalltalk::LANOutputServer.accept:(Object)'))