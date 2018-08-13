*Ring2-Core
asRingMinimalDefinitionIn: anRGEnvironment

	^ anRGEnvironment backend definitionFor: self ifAbsentRegister: [
		RGVariableLayout parent: (self host asRingMinimalDefinitionIn: anRGEnvironment)]
