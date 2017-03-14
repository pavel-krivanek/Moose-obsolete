tests
testReceivingSuper5
	| invocation |
	invocation := self invocationFrom: #'Smalltalk::LANFileServer.name()' to: #'name()'.
	self assert: invocation notNil.
	self assert: invocation receiver mooseName equals: #'Smalltalk::LANFileServer.name().super'