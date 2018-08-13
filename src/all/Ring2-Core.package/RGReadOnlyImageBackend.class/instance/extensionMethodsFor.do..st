package
extensionMethodsFor: anRGPackageDefinition do: aBlock

	| realPackage |
	
	realPackage := self realPackageFor: anRGPackageDefinition.
	realPackage ifNotNil: [ 
		realPackage extensionMethods do: [:aCompiledMethod |
			| def | 
			def := self definitionFor: aCompiledMethod ifAbsentRegister: [aCompiledMethod asRingMinimalDefinitionIn: anRGPackageDefinition environment].
			aBlock value: def.]]