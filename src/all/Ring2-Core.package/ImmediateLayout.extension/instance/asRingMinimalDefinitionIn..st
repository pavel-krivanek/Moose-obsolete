*Ring2-Core
asRingMinimalDefinitionIn: anRGEnvironment

	^ anRGEnvironment backend definitionFor: self ifAbsentRegister: [
		RGImmediateLayout parent: (self host asRingMinimalDefinitionIn: anRGEnvironment)]
