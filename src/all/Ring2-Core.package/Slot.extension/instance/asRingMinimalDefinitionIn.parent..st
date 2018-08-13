*Ring2-Core
asRingMinimalDefinitionIn: anRGEnvironment parent: anRGLayout

	^ anRGEnvironment backend definitionFor: self ifAbsentRegister: [
		| def |
		def := RGUnknownSlot named: self name asSymbol parent: anRGLayout.
		def ].