*Ring2-Tests-Core
asRingMinimalDefinitionIn: anRGEnvironment

	^ anRGEnvironment backend definitionFor: self ifAbsentRegister: [
		RGTrait named: self name asSymbol parent: anRGEnvironment]. 
	