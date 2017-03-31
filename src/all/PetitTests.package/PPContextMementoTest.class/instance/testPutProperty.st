tests
testPutProperty
	| c retval  |
	c := OrderedCollection new.
	self assert: (memento hasProperty: #foo) not.
	self assert: (memento hasProperty: #bar) not.	
	
	self should: [ memento propertyAt: #foo ] raise: Error.
	self assert: (memento propertyAt: #foo ifAbsent: [ c ]) == c.
	
	retval := memento propertyAt: #foo ifAbsentPut: [ c ].
	self assert: retval size = c size.	
	self assert: (retval == c) not.
	self assert: retval = c.
	self assert: (memento hasProperty: #foo).
	
	retval := memento propertyAt: #bar put: c.
	self assert: retval size = c size.	
	self assert: (retval == c) not.
	self assert: retval = c.
	self assert: (memento hasProperty: #foo).	
