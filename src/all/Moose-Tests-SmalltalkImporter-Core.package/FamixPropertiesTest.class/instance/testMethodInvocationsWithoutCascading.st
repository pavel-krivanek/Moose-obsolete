testing
testMethodInvocationsWithoutCascading
	self assert: (self model entityNamed: #'Smalltalk::LANInterface.remove()') numberOfOutgoingInvocations equals: 6.
	self
		assert: (self model entityNamed: #'Smalltalk::LANInterface.newWorkstation()') numberOfOutgoingInvocations
		equals: 4