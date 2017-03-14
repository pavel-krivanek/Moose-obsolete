tests
testReceivingSuper
	| invocation |
	invocation := self invocationFrom: #'Smalltalk::LANInterface.initialize()' to: #'initialize()'.
	self assert: invocation notNil.
	self assert: invocation receiver mooseName equals: #'Smalltalk::LANInterface.initialize().super'