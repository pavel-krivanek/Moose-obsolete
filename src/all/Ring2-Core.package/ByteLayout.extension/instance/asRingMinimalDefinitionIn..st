*Ring2-Core
asRingMinimalDefinitionIn: anRGEnvironment

	^ anRGEnvironment backend definitionFor: self ifAbsentRegister: [
		RGByteLayout parent: (self host asRingMinimalDefinitionIn: anRGEnvironment)]
