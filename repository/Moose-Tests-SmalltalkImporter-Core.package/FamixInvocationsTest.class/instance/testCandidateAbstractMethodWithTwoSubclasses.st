tests
testCandidateAbstractMethodWithTwoSubclasses
	| invocation |
	invocation := self invocationFrom: #'Smalltalk::LANOutputServer.accept:(Object)' to: #'output:(Object)'.
	self assert: invocation notNil.
	self assert: invocation candidates size equals: 2.
	self assert: (invocation candidates includes: (self model entityNamed: #'Smalltalk::LANFileServer.output:(Object)')).
	self assert: (invocation candidates includes: (self model entityNamed: #'Smalltalk::LANPrintServer.output:(Object)'))