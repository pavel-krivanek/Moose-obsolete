*Ring2-Core
asRingMinimalDefinitionIn: anRGEnvironment

	^ anRGEnvironment backend definitionFor: self ifAbsentRegister: [
		RGFixedLayout parent: (self host asRingMinimalDefinitionIn: anRGEnvironment)]
