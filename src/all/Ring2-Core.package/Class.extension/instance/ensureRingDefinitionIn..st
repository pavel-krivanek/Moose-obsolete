*Ring2-Core
ensureRingDefinitionIn: anRGEnvironment

	^ anRGEnvironment ask behaviors 
		detect: [:each | each name = self name] 
		ifNone: [ 
			| behaviorModel |
			behaviorModel := self asRingMinimalDefinitionIn: anRGEnvironment.
			anRGEnvironment addBehavior: behaviorModel.
			behaviorModel]