tests
testReceivingKnownClass3
	| invocation |
	invocation := self invocationFrom: #'Smalltalk::LANInterface.newFileServer()' to: #'new()'.
	self assert: invocation notNil.
	self assert: invocation receiver mooseName equals: #Smalltalk::LANFileServer_class