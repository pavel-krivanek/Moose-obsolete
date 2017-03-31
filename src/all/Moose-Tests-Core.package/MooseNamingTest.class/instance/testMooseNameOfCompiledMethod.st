testing
testMooseNameOfCompiledMethod
	self
		assert: (TheRoot class >> #accessInstanceVariable) mooseName
		equals: #'Smalltalk::TheRoot_class.accessInstanceVariable()'.
	self assert: (TheRoot >> #accessingClass) mooseName equals: #'Smalltalk::TheRoot.accessingClass()'.	"May be we could fix that too. using another notation so that we could use the notation create method
	name too"
	self should: [ (TheRoot >> #zork) mooseName ] raise: Error