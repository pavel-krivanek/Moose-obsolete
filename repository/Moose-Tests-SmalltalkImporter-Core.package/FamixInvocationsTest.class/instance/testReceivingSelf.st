tests
testReceivingSelf
	| invocation |
	invocation := self invocationFromOutputServerAcceptMethodTo: #'output:(Object)'.
	self assert: invocation notNil.
	self assert: invocation receiver mooseName equals: #'Smalltalk::LANOutputServer.accept:(Object).self'