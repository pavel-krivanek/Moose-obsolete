tests
testStringNodeClass
	super testStringNodeClass.

	self assert: self newFactoryWithClasses stringNodeClass == self stringNodeClass.