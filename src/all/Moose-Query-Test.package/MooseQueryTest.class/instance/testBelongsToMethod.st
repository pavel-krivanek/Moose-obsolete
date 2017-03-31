tests
testBelongsToMethod
	self assert: class1 class belongsToMethod isNil.
	self assert: method1 class belongsToMethod isNotNil.