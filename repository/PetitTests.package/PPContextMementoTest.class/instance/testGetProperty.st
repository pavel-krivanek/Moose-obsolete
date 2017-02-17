tests
testGetProperty
	
	| c retval retval2 |
	c := OrderedCollection new.
	
	memento propertyAt: #foo put: c.
	
	retval := memento propertyAt: #foo.
	self assert: retval size = c size.
	self assert: (retval == c) not.
	self assert: retval = c.
	
	c add: #element.
	self assert: (retval = c) not.

	retval2 := memento propertyAt: #foo.
	self assert: (retval = retval2).
	self assert: (retval == retval2) not.
	
	retval add: #element.
	self assert: (retval = retval2) not.
