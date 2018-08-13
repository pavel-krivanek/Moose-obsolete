*Ring2-Monticello
ensureRingDefinitionIn: anRGEnvironment

	^ anRGEnvironment backend definitionFor: self ifAbsentRegister: [
		| def traitDef |
		def := anRGEnvironment ensureMetaclassTraitNamed: (self baseTrait, ' classTrait') asSymbol.
		traitDef := anRGEnvironment ensureTraitNamed: (self baseTrait) asSymbol.
		def baseTrait: traitDef.
		traitDef classTrait: def.
		def traitComposition: (self traitCompositionFrom: self classTraitComposition parent: def).
		traitDef category: self category. "makes no sense for metaclass trait"
		def]. 
	