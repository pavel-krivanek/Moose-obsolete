tests
testIsDefault
	self streamConverterClass == self defaultClass
		ifTrue: [self assert: self newStreamConverter isDefault]
		ifFalse: [self deny: self newStreamConverter isDefault]