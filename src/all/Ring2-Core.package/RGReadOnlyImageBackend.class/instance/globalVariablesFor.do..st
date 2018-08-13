environment
globalVariablesFor: anRGEnvironment do: aBlock

	Smalltalk globals associations do: [:each |
		| def | 
		def := self definitionFor: each ifAbsentRegister: [each asRingMinimalDefinitionIn: anRGEnvironment].
		aBlock value: def.].