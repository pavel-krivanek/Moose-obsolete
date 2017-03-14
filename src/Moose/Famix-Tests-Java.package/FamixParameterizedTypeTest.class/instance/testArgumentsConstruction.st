tests
testArgumentsConstruction
	| parameterizableType argument1 argument2 |
	parameterizableType := FAMIXParameterizedType new.
	argument1 := FAMIXClass new.
	argument2 := FAMIXClass new.
	parameterizableType arguments: {argument1}.
	parameterizableType arguments add: argument2.
	self assert: parameterizableType arguments size equals: 2.
	self assert: argument1 argumentsInParameterizedTypes size equals: 1.
	self assert: argument1 argumentsInParameterizedTypes first equals: parameterizableType.
	self assert: argument2 argumentsInParameterizedTypes size equals: 1.
	self assert: argument2 argumentsInParameterizedTypes first equals: parameterizableType