instance creation
unresolvedWithParent: anRGDefintion

	^ RGBehavior unresolvedWithParent: anRGDefintion behaviorStrategy: (self newStrategyFor: anRGDefintion environment) 