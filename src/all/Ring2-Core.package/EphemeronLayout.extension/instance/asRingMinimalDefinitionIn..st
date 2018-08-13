*Ring2-Core
asRingMinimalDefinitionIn: anRGEnvironment

	^ anRGEnvironment backend definitionFor: self ifAbsentRegister: [
		RGEphemeronLayout parent: (self host asRingMinimalDefinitionIn: anRGEnvironment)]
