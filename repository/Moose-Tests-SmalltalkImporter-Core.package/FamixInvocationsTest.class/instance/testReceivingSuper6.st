tests
testReceivingSuper6
	| invocation |
	invocation := self invocationFrom: #'Smalltalk::LANPacket.printOn:(Object)' to: #'printOn:(Object)'.
	self assert: invocation notNil.
	self assert: invocation receiver mooseName equals: #'Smalltalk::LANPacket.printOn:(Object).super'