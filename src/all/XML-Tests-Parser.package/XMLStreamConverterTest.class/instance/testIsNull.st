tests
testIsNull
	self streamConverterClass == self nullClass
		ifTrue: [self assert: self newStreamConverter isNull]
		ifFalse: [self deny: self newStreamConverter isNull]