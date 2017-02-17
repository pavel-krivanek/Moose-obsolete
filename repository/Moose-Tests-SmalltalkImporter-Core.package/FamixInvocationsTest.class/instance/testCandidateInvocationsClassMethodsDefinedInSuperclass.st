tests
testCandidateInvocationsClassMethodsDefinedInSuperclass
	| invocation method |
	invocation := self invocationFrom: #'Smalltalk::LANInterface.newWorkstation()' to: #'new()'.
	self assert: invocation isNil not.
	self assert: invocation receiver equals: (self model entityNamed: #Smalltalk::LANWorkStation_class).
	self assert: invocation candidates size equals: 1.
	method := self model entityNamed: #'Smalltalk::LANNode_class.new()'.
	self assert: (invocation candidates includes: method)