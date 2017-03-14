tests
testReceivingSuper4
	| invocation |
	invocation := self invocationFrom: #'Smalltalk::LANWorkStation.name()' to: #'name()'.
	self assert: invocation notNil.
	self assert: invocation receiver mooseName equals: #'Smalltalk::LANWorkStation.name().super'