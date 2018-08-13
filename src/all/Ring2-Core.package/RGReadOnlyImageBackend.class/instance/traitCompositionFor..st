behavior
traitCompositionFor: anRGBehavior

	| realClass realTraitComposition def |
	
	realClass := self realBehaviorFor: anRGBehavior.
	realTraitComposition := realClass traitComposition.
	def := self 	definitionFor: realTraitComposition ifAbsentRegister: [ 
			realTraitComposition asRingMinimalDefinitionIn: anRGBehavior environment ].
	^ def
