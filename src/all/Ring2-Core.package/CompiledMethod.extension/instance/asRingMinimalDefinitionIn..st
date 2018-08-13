*Ring2-Core
asRingMinimalDefinitionIn: anRGEnvironment

	^ anRGEnvironment backend definitionFor: self ifAbsentRegister: [
		RGMethod named: self selector asSymbol parent: (self methodClass asRingMinimalDefinitionIn: anRGEnvironment)]
