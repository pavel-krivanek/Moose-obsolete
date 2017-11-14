tests
testIsDefaultClass
	self streamConverterClass == self defaultClass
		ifTrue: [self assert: self streamConverterClass isDefaultClass]
		ifFalse: [self deny: self streamConverterClass isDefaultClass]