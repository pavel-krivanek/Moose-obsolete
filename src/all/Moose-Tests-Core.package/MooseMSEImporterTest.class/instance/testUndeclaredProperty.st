tests
testUndeclaredProperty
	| mooseModel |
	mooseModel := self readMSEStream: '((FAMIX.Class (name ''ClassA'') (Undeclared 42) ))' readStream.
	self assert: mooseModel allClasses first name equals: 'ClassA'.
	self assert: (mooseModel allClasses first propertyNamed: #Undeclared) notNil.
	self assert: (mooseModel allClasses first propertyNamed: #Undeclared) equals: 42