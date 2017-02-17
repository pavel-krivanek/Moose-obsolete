tests
testMooseName

	| parameterizableType |
	parameterizableType := model allParameterizedTypes entityNamed: #'ParameterizableClassA<TypeB,TypeC>'.
	self assert: parameterizableType notNil