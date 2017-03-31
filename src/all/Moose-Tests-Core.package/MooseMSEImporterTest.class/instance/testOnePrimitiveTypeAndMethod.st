tests
testOnePrimitiveTypeAndMethod
	| mooseModel |
	mooseModel := self
		readMSEStream:
			'(
(FAMIX.PrimitiveType (id: 1) (name ''int''))
(FAMIX.Class (id: 2) (name ''ClassA''))
(FAMIX.Method (id: 3) (name ''methodA'') (declaredType (ref: 1)) (parentType (ref: 2)))
)' readStream.
	self assert: (mooseModel allPrimitiveTypes collect: #name) first equals: 'int'.
	self assert: mooseModel allMethods first declaredType equals: mooseModel allPrimitiveTypes first