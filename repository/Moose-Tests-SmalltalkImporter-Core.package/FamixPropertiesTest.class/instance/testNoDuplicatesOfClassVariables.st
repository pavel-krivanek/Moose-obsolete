testing
testNoDuplicatesOfClassVariables
	self
		assert: ((self model entityNamed: #Smalltalk::Object) attributes contains: [ :each | each name = #DependentsFields ]).
	self
		assert:
			(self model entityNamed: #Smalltalk::Object) attributes first
				== (self model entityNamed: #Smalltalk::Object) attributes last.
	self assert: (self model entityNamed: #Smalltalk::Object) attributes size equals: 1