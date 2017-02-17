tests
testReceivingSuper3
	| invocation |
	invocation := self invocationFrom: (LANNode class >> #new) mooseName to: #'new()'.
	self assert: invocation notNil.
	self assert: invocation receiver mooseName equals: (LANNode class mooseName , '.new().super') asSymbol