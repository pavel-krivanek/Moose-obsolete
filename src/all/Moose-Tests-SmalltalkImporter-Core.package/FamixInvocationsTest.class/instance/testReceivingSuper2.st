tests
testReceivingSuper2
	| invocation |
	invocation := self invocationFrom: (LANNode >> #printOn:) mooseName to: #'printOn:(Object)'.
	self assert: invocation notNil.
	self assert: invocation receiver mooseName equals: (LANNode mooseName , '.printOn:(Object).super') asSymbol