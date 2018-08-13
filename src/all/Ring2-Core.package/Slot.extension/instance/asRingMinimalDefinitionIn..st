*Ring2-Core
asRingMinimalDefinitionIn: anRGEnvironment

	^ self asRingMinimalDefinitionIn: anRGEnvironment parent: (self definingClass classLayout asRingMinimalDefinitionIn: anRGEnvironment)