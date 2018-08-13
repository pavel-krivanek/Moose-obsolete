environment
behaviorsFor: anRGEnvironment do: aBlock

	SystemNavigation default allBehaviors do: [:each |
		| def | 
		def := self definitionFor: each ifAbsentRegister: [each asRingMinimalDefinitionIn: anRGEnvironment].
		aBlock value: def.].