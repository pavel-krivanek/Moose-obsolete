tests
testReceivingSelf3
	| invocation |
	invocation := self invocationFromOutputServerAcceptMethodTo: #'send:(Object)'.
	self assert: invocation notNil.
	self assert: invocation receiver mooseName equals: #'Smalltalk::LANOutputServer.accept:(Object).self'