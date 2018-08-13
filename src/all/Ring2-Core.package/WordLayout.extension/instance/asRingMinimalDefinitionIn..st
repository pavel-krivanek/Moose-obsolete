*Ring2-Core
asRingMinimalDefinitionIn: anRGEnvironment

	^ anRGEnvironment backend definitionFor: self ifAbsentRegister: [
		RGWordLayout parent: (self host asRingMinimalDefinitionIn: anRGEnvironment)]
