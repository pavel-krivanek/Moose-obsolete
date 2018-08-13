environment
packagesFor: anRGEnvironment do: aBlock

	RPackageOrganizer default packagesDo: [:each |
		| def | 
		def := self definitionFor: each ifAbsentRegister: [each asRingMinimalDefinitionIn: anRGEnvironment].
		aBlock value: def.].