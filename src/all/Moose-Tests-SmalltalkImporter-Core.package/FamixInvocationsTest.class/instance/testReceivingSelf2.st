tests
testReceivingSelf2
	| invocation |
	invocation := self invocationFromOutputServerAcceptMethodTo: #'name()'.
	self assert: invocation notNil.
	self assert: invocation receiver mooseName equals: #'Smalltalk::LANOutputServer.accept:(Object).self'