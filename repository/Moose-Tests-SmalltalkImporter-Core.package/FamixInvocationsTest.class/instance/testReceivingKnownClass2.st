tests
testReceivingKnownClass2
	| invocation |
	invocation := self invocationFrom: #'Smalltalk::LANInterface.newWorkstation()' to: #'new()'.
	self assert: invocation notNil.
	self assert: invocation receiver mooseName equals: #Smalltalk::LANWorkStation_class