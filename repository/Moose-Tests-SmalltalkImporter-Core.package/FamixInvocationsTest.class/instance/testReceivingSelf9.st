tests
testReceivingSelf9
	| invocation |
	invocation := self invocationFrom: #'Smalltalk::LANOutputServer.output:(Object)' to: #'subclassResponsibility()'.
	self assert: invocation notNil.
	self assert: invocation receiver mooseName equals: #'Smalltalk::LANOutputServer.output:(Object).self'