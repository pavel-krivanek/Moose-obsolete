testing
testMooseName
	self assert: root mooseName equals: 'a'.
	self assert: child1 mooseName equals: 'a::b'.
	self assert: child2 mooseName equals: 'a::d'.
	self assert: child11 mooseName equals: 'a::b::c'