*Ring2-Core
asRingMinimalDefinitionIn: anRGEnvironment 

	^ anRGEnvironment backend definitionFor: self ifAbsentRegister: [
		RGGlobalVariable named: self key asSymbol parent: anRGEnvironment].