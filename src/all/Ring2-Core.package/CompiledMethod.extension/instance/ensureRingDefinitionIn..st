*Ring2-Core
ensureRingDefinitionIn: anRGEnvironment

	| parentModel |
	
	parentModel := (self methodClass ensureRingDefinitionIn: anRGEnvironment).
	
	^ parentModel methods 
		detect: [:each | each selector = self selector]
		ifNone: [ 
			| methodModel |
			methodModel := self asRingMinimalDefinitionIn: anRGEnvironment.
			parentModel addLocalMethod: methodModel.
			methodModel ]	