tests
testUnknownProperty
	| model |
	model := MooseModel new.
	self assert: (model propertyNamed: #UNKNOWN) isNil.
	model propertyNamed: 'UNKNOWN' put: 10.
	self assert: (model propertyNamed: #UNKNOWN) equals: 10