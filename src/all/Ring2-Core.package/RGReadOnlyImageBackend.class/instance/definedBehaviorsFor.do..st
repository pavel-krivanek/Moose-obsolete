package
definedBehaviorsFor: anRGPackageDefinition do: aBlock

	| realPackage |
	
	realPackage := self realPackageFor: anRGPackageDefinition.
	realPackage ifNotNil: [ 
		realPackage definedClassesDo: [:behaviorName |
			| def cls | 
			cls := Smalltalk classOrTraitNamed: behaviorName.
			def := self definitionFor: cls ifAbsentRegister: [cls asRingMinimalDefinitionIn: anRGPackageDefinition environment].
			aBlock value: def.]]