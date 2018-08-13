method
methodPackageFor: anRGMethod

	^ (self realMethodFor: anRGMethod) package asRingMinimalDefinitionIn: anRGMethod environment.