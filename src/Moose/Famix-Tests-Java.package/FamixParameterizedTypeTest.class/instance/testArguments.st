tests
testArguments
	| parameterizableType |
	parameterizableType := model allParameterizedTypes entityNamed: #'ParameterizableClassA<TypeB,TypeC>'.
	self assert: parameterizableType arguments notEmpty.
	self assert: parameterizableType arguments size equals: 2