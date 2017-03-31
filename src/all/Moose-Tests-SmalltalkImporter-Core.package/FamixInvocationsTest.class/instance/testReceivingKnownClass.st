tests
testReceivingKnownClass
	| invocation |
	invocation := self invocationFrom: #'Smalltalk::LANInterface.newNode()' to: #'new()'.
	self assert: invocation notNil.
	self assert: invocation receiver mooseName equals: LANNode class mooseName