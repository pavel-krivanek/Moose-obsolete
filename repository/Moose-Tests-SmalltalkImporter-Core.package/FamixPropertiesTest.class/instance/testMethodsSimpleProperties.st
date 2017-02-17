testing
testMethodsSimpleProperties
	| method |
	method := self model entityNamed: #'Smalltalk::LANInterface.initialize()'.
	self assert: method isInitializer.
	self deny: method isInternalImplementation.
	self deny: method isPureAccessor.

	method := self model entityNamed: #'Smalltalk::LANInterface.originate()'.
	self deny: method isInitializer.
	self deny: method isInternalImplementation.
	self deny: method isPureAccessor.

	method := self model entityNamed: #'Smalltalk::LANInterface.nodeList()'.
	self deny: method isInitializer.
	self assert: method isInternalImplementation.
	self deny: method isPureAccessor.