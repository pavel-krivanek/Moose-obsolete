*Ring2-Core
asRingMinimalDefinitionIn: anRGEnvironment

	^ anRGEnvironment backend definitionFor: self ifAbsentRegister: [
		RGCompiledMethodLayout parent: (self host asRingMinimalDefinitionIn: anRGEnvironment)]
